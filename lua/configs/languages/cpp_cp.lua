-- TermWrapper: open a split terminal (vertical/horizontal) and start insert mode automatically
local function TermWrapper(command)
  -- Default split style
  vim.g.split_term_style = vim.g.split_term_style or 'vertical'

  -- Validate
  local style = tostring(vim.g.split_term_style):lower()
  if style ~= 'vertical' and style ~= 'horizontal' then
    vim.notify(
      ('ERROR! g:split_term_style must be "horizontal" or "vertical" (currently "%s")')
        :format(vim.g.split_term_style),
      vim.log.levels.ERROR
    )
    error('Invalid g:split_term_style value')
  end

  -- Perform split
  local split_cmd = (style == 'vertical') and 'vnew' or 'new'
  vim.cmd(split_cmd)

  -- Optional resize
  if vim.g.split_term_resize_cmd and vim.g.split_term_resize_cmd ~= '' then
    pcall(vim.cmd, vim.g.split_term_resize_cmd)
  end

  -- Launch terminal
  vim.cmd('term ' .. command)
  local bufnr = vim.api.nvim_get_current_buf()

  -- Set options (modern API)
  vim.api.nvim_set_option_value('number', false, { win = 0 })
  vim.api.nvim_set_option_value('relativenumber', false, { win = 0 })

  -- Enter insert
  vim.cmd.startinsert()

  -- Autocmd to re-enter insert mode
  local group = vim.api.nvim_create_augroup('TermWrapperGroup', { clear = false })
  vim.api.nvim_create_autocmd('BufEnter', {
    group = group,
    buffer = bufnr,
    desc = 'Auto startinsert for TermWrapper terminal',
    callback = function()
      vim.cmd.startinsert()
    end,
  })
end


-- C++ 
vim.api.nvim_create_user_command('CompileAndRun', function()
    local file_dir = vim.fn.expand('%:p:h')
    local file_name = vim.fn.expand('%:t')
    TermWrapper('cd ' .. vim.fn.shellescape(file_dir) .. ' && g++ -std=c++17 ' .. vim.fn.shellescape(file_name) .. ' && ./a.out')
end, { nargs = 0 })

vim.api.nvim_create_user_command('CompileAndRunWithFile', function(args)
    local file_dir = vim.fn.expand('%:p:h')
    local file_name = vim.fn.expand('%:t')
    TermWrapper('cd ' .. vim.fn.shellescape(file_dir) .. ' && g++ -std=c++17 ' .. vim.fn.shellescape(file_name) .. ' && ./a.out < ' .. args.args)
end, { nargs = 1, complete = 'file' })
-- vim.api.nvim_create_user_command('PastTests', past_tests, {})


vim.api.nvim_create_augroup('CppToolkit', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'cpp',
    group = 'CppToolkit',
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', '<F2>', ':CompileAndRun<CR>', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', '<F3>', ':CompileAndRunWithFile "input.txt"<CR>', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, 'n', '<C-t>', ':PastTests<CR>', { noremap = true, silent = true })
    end
})
