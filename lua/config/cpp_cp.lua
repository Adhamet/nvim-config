-- Enhanced Competitive Programming setup for Neovim in Termux
-- Assumes you have a split pane setup in Termux

-- Configuration
local M = {}
M.use_termux_pane = false -- Set to true if using tmux
M.tmux_pane_id = "1" -- Target pane (usually "1" for right pane)

-- Helper: Run command in right pane (tmux)
local function run_in_right_pane(command)
  if vim.env.TMUX then
    -- We're in tmux, send to target pane
    local tmux_cmd = string.format("tmux send-keys -t %s '%s' Enter", M.tmux_pane_id, command:gsub("'", "'\\''"))
    vim.fn.system(tmux_cmd)
  else
    -- Not in tmux, just show notification
    vim.notify("Not in tmux. Command: " .. command, vim.log.levels.WARN)
    vim.notify("Switch to right pane and run the command manually", vim.log.levels.INFO)
  end
end

-- Helper: Open terminal wrapper (fallback if not using panes)
local function TermWrapper(command)
  vim.g.split_term_style = vim.g.split_term_style or "vertical"
  local style = tostring(vim.g.split_term_style):lower()

  if style ~= "vertical" and style ~= "horizontal" then
    vim.notify('ERROR! g:split_term_style must be "horizontal" or "vertical"', vim.log.levels.ERROR)
    return
  end

  local split_cmd = (style == "vertical") and "vnew" or "new"
  vim.cmd(split_cmd)

  if style == "vertical" then
    vim.cmd("vertical resize 45") -- 60 columns wide (change this number)
  else
    vim.cmd("resize 15") -- 15 rows tall
  end

  if vim.g.split_term_resize_cmd and vim.g.split_term_resize_cmd ~= "" then
    pcall(vim.cmd, vim.g.split_term_resize_cmd)
  end

  vim.cmd("term " .. command)
  local bufnr = vim.api.nvim_get_current_buf()

  vim.api.nvim_set_option_value("number", false, { win = 0 })
  vim.api.nvim_set_option_value("relativenumber", false, { win = 0 })
  vim.cmd.startinsert()

  local group = vim.api.nvim_create_augroup("TermWrapperGroup", { clear = false })
  vim.api.nvim_create_autocmd("BufEnter", {
    group = group,
    buffer = bufnr,
    callback = function()
      vim.cmd.startinsert()
    end,
  })
end

-- Execute command (either in pane or terminal)
local function execute_command(command)
  if M.use_termux_pane and vim.env.TMUX then
    run_in_right_pane(command)
    vim.notify("Command sent to tmux pane", vim.log.levels.INFO)
  else
    TermWrapper(command)
  end
end

-- Commands

-- Compile and run with test cases
vim.api.nvim_create_user_command("CPTest", function()
  local file_dir = vim.fn.expand("%:p:h")  -- Get directory
  local file_name = vim.fn.expand("%:t")   -- Get just filename
  local command = string.format("cd %s && cp-test-runner.sh %s",
    vim.fn.shellescape(file_dir),
    vim.fn.shellescape(file_name)
  )
  execute_command(command)
end, { nargs = 0 })

-- Quick compile and run (no tests)
vim.api.nvim_create_user_command("CPRun", function()
  local file_dir = vim.fn.expand("%:p:h")
  local file_name = vim.fn.expand("%:t")
  local base_name = vim.fn.expand("%:t:r")
  local command = string.format(
    'cd %s && g++ -std=c++17 -O2 -Wall -DLOCAL -I"$HOME/cp" %s -o %s && ./%s',
    vim.fn.shellescape(file_dir),
    vim.fn.shellescape(file_name),
    vim.fn.shellescape(base_name),
    vim.fn.shellescape(base_name)
  )
  execute_command(command)
end, { nargs = 0 })

-- Compile and run with specific input file
vim.api.nvim_create_user_command("CPRunWithInput", function(args)
  local file_dir = vim.fn.expand("%:p:h")
  local file_name = vim.fn.expand("%:t")
  local base_name = vim.fn.expand("%:t:r")
  local input_file = args.args
  local command = string.format(
    'cd %s && g++ -std=c++17 -O2 -Wall -DLOCAL -I"$HOME/cp" %s -o %s && ./%s < %s',
    vim.fn.shellescape(file_dir),
    vim.fn.shellescape(file_name),
    vim.fn.shellescape(base_name),
    vim.fn.shellescape(base_name),
    vim.fn.shellescape(input_file)
  )
  execute_command(command)
end, { nargs = 1, complete = "file" })

-- Parse tests from clipboard
vim.api.nvim_create_user_command("CPParseTests", function()
  local file_dir = vim.fn.expand("%:p:h")
  local command = string.format("cd %s && parse-tests.sh", vim.fn.shellescape(file_dir))
  execute_command(command)
end, { nargs = 0 })

-- Generate test files manually (quick input/output creation)
vim.api.nvim_create_user_command("CPNewTest", function()
  local file_dir = vim.fn.expand("%:p:h")

  -- Count existing tests
  local existing = vim.fn.glob(file_dir .. "/input*.txt", false, true)
  local test_num = #existing + 1

  local input_file = string.format("%s/input%d.txt", file_dir, test_num)
  local output_file = string.format("%s/output%d.txt", file_dir, test_num)

  -- Create empty files
  vim.fn.writefile({}, input_file)
  vim.fn.writefile({}, output_file)

  -- Open input file in split
  vim.cmd("split " .. input_file)
  vim.notify(
    string.format("Created test %d. Fill input, then create output%d.txt", test_num, test_num),
    vim.log.levels.INFO
  )
end, { nargs = 0 })

-- Stress test (useful for finding edge cases)
vim.api.nvim_create_user_command("CPStress", function(args)
  local file_name = vim.fn.expand("%:t:r")
  local iterations = args.args ~= "" and args.args or "100"

  local stress_script = string.format(
    [[
#!/bin/bash
for i in {1..%s}; do
    echo "Test $i"
    # Generate random input (you need to create gen.cpp)
    ./gen > input.txt
    ./%s < input.txt > output.txt
    # Compare with brute force (you need brute.cpp)
    ./brute < input.txt > expected.txt
    if ! diff -w output.txt expected.txt > /dev/null; then
        echo "Found difference on test $i!"
        cat input.txt
        break
    fi
done
]],
    iterations,
    file_name
  )

  local file_dir = vim.fn.expand("%:p:h")
  local stress_file = file_dir .. "/stress.sh"
  vim.fn.writefile(vim.split(stress_script, "\n"), stress_file)
  vim.fn.setfperm(stress_file, "rwxr-xr-x")

  execute_command("cd " .. vim.fn.shellescape(file_dir) .. " && ./stress.sh")
end, { nargs = "?" })

-- Toggle between Termux pane and vim split
vim.api.nvim_create_user_command("CPTogglePane", function()
  M.use_termux_pane = not M.use_termux_pane
  local mode = M.use_termux_pane and "Termux pane" or "Vim split"
  vim.notify("Execution mode: " .. mode, vim.log.levels.INFO)
end, { nargs = 0 })

-- Setup keymaps for C++ files
vim.api.nvim_create_augroup("CPToolkit", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  group = "CPToolkit",
  callback = function()
    local opts = { noremap = true, silent = true, buffer = true }

    -- Main commands
    vim.keymap.set("n", "<F2>", ":CPRun<CR>", opts) -- Quick run
    vim.keymap.set("n", "<F3>", ":CPTest<CR>", opts) -- Run all tests
    vim.keymap.set("n", "<F4>", ":CPParseTests<CR>", opts) -- Parse from clipboard
    vim.keymap.set("n", "<F5>", ":CPNewTest<CR>", opts) -- Create new test

    -- Additional shortcuts
    vim.keymap.set("n", "<leader>cr", ":CPRun<CR>", opts)
    vim.keymap.set("n", "<leader>ct", ":CPTest<CR>", opts)
    vim.keymap.set("n", "<leader>cp", ":CPParseTests<CR>", opts)
    vim.keymap.set("n", "<leader>cn", ":CPNewTest<CR>", opts)
    vim.keymap.set("n", "<leader>cs", ":CPStress<CR>", opts)
    vim.keymap.set("n", "<leader>cT", ":CPTogglePane<CR>", opts)
  end,
})

-- Statusline indicator (optional)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.b.cp_mode = M.use_termux_pane and "⚡Pane" or "📺Split"
  end,
})

return M
