require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Command enter mode
map("n", ";", ":")

-- Ctrl + a to select all
map("n", "<C-a>", "ggVG", opts)

-- Ctrl + q to force quit
map("n", "<C-q>", ":q!<CR>", opts)

-- Ctrl + n to toggle nvimtree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Splits navigation using Ctrl + Arrow Keys
map("n", "<C-Left>", "<C-w>h", opts)
map("n", "<C-Down>", "<C-w>j", opts)
map("n", "<C-Up>", "<C-w>k", opts)
map("n", "<C-Right>", "<C-w>l", opts)

-- Terminal management with Alt + Arrow Keys
map("n", "<A-Down>", ":sp | resize 15 | terminal<CR>:startinsert<CR>", opts)-- Split below and open terminal
map("n", "<A-Right>", ":vsp | vertical resize 35 | terminal<CR>:startinsert<CR>", opts)-- Split right and open terminal
map("t", "<A-w>", [[<C-\><C-n>:q!<CR>]], opts) -- Close terminal with Alt + w

-- No clue what that is
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
