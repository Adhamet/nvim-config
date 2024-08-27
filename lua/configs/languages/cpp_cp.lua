local function TermWrapper(command)
  -- Set the default split style if it doesn't exist
  vim.g.split_term_style = vim.g.split_term_style or 'vertical'

  local buffercmd
  if vim.g.split_term_style == 'vertical' then
    buffercmd = 'vnew'
  elseif vim.g.split_term_style == 'horizontal' then
    buffercmd = 'new'
  else
    vim.api.nvim_err_writeln('ERROR! g:split_term_style is not a valid value (must be "horizontal" or "vertical" but is currently set to "' .. vim.g.split_term_style .. '")')
    error('ERROR! g:split_term_style is not a valid value (must be "horizontal" or "vertical")')
  end

  vim.cmd(buffercmd)

  -- Execute resize command if it exists
  if vim.g.split_term_resize_cmd then
    vim.cmd(vim.g.split_term_resize_cmd)
  end

  -- Start the terminal and set options
  vim.cmd('term ' .. command)
  vim.cmd('setlocal nornu nonu')
  vim.cmd('startinsert')

  -- Autocmd to start insert mode on buffer enter
  vim.api.nvim_create_autocmd('BufEnter', {
    buffer = 0,
    callback = function() vim.cmd('startinsert') end,
  })
end

local function past_tests()
    -- Switch to the right window
    vim.cmd('wincmd w')

    -- Ensure input.txt is open and writable
    local buf = vim.fn.bufnr('input.txt')
    if buf == -1 then
        -- If input.txt is not open, create and open it
        vim.cmd('vsplit input.txt')
        buf = vim.fn.bufnr('input.txt')
    end

    -- Ensure the buffer is modifiable
    vim.bo[buf].modifiable = true
    
    -- Delete existing content
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, {})

    -- Set autoread and autowrite
    vim.cmd('set autoread')
    vim.cmd('set autowrite')

    -- Copy from clipboard to input.txt using xclip
    vim.cmd('silent !xclip -o > input.txt')
    
    -- Redraw the screen
    vim.cmd('redraw!')
    
    -- Switch back to the left window
    vim.cmd('wincmd h')
end

-- C++ 
vim.api.nvim_create_user_command('CompileAndRun', function()
    TermWrapper('g++ -std=c++17 ' .. vim.fn.expand('%') .. ' && ./a.out')
end, { nargs = 0 })

vim.api.nvim_create_user_command('CompileAndRunWithFile', function(args)
    TermWrapper('g++ -std=c++17 ' .. vim.fn.expand('%') .. ' && ./a.out < ' .. args.args)
end, { nargs = 1, complete = 'file' })

vim.api.nvim_create_user_command('PastTests', past_tests, {})


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
