vim.g.mapleader = " "
-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Control s to save 
vim.keymap.set("n", "<C-s>", vim.cmd.w)

-- Move line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep selection when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Append line under to current line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Center when going to next searchterm
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Center when moving up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Dont override clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Real end or start of file
vim.keymap.set("n", "gg", "gg0")

-- Select all
vim.keymap.set("n", "<C-a>", "gg0vG$")
vim.keymap.set("n", "G", "G$")

vim.keymap.set("n", "<leader>ts4", ":set tabstop=4 | :set softtabstop=4 | :set shiftwidth=4<CR>")
vim.keymap.set("n", "<leader>ts2", ":set tabstop=2 | :set softtabstop=2 | :set shiftwidth=2<CR>")

vim.keymap.set("n", "<C-l>", ":vertical res +10<CR>")
vim.keymap.set("n", "<C-h>", ":vertical res -10<CR>")

-- Disable cmd window
vim.keymap.set("n", "q:", "")

-- See current scope
-- Using <leader>s for symbol search in telescope.lua
-- vim.keymap.set("n", "<leader>s", ":IBLToggleScope<CR>")

-- Delete without yanking
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Replace currently selected text with default register without yanking it
-- vnoremap <leader>p "_dP
vim.keymap.set("v", "<leader>p", "\"_dP")
