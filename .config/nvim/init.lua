--Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",     -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Load remaps
require("remap")

--Load plugins from "./lua.plugins/*.lua"
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } }, {
  change_detection = {
    notify = false
  },
})

--Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

--Sign column
vim.opt.signcolumn = "yes:1"

--Indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

--Wrap
vim.opt.wrap = false

--Backup
vim.opt.swapfile = false
vim.opt.backup = false

--Search
vim.opt.hlsearch = false --Remove search when finished
vim.opt.incsearch = true --Incremental search
vim.opt.ignorecase = true

--Enable colors
vim.opt.termguicolors = true

--Cursor 8 lines from top/bottom
vim.opt.scrolloff = 8

--Helper to avoid indenting too much
vim.opt.colorcolumn = "100"

--Undotree
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undotree"
vim.opt.undofile = true

--Use system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.pumheight = 15

--Highlight current line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
