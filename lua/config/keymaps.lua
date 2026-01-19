-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Command enter mode
map("n", ";", ":", { desc = "Command mode" })

-- Ctrl + a to select all
map("n", "<C-a>", "ggVG", { desc = "Select all" })

map("n", "<C-c>", ":%y+<CR>", { desc = "Copy entire file" })

-- Ctrl + q to force quit
map("n", "<C-q>", ":q!<CR>", { desc = "Force quit" })

-- Ctrl + n to toggle nvimtree (if you use neo-tree, change to :Neotree toggle)
map("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- Centered scrolling
map("n", "<C-d>", "5jzz", { desc = "Scroll down centered" })
map("n", "<C-u>", "5kzz", { desc = "Scroll up centered" })

-- Splits navigation using Ctrl + Arrow Keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to left split" })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower split" })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper split" })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right split" })

-- Terminal management with Alt + Arrow Keys
map("n", "<A-Down>", ":sp | resize 15 | terminal<CR>:startinsert<CR>", { desc = "Terminal below" })
map("n", "<A-Right>", ":vsp | vertical resize 35 | terminal<CR>:startinsert<CR>", { desc = "Terminal right" })
map("t", "<A-w>", [[<C-\><C-n>:q!<CR>]], { desc = "Close terminal" })

-- Escape from insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Force Tab to insert literal tab/spaces
map("i", "<Tab>", "<Tab>", { noremap = true })
