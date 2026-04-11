require("my-config.lazy")
require("my-config.remap")
require("my-config.highlight")
require("my-config.lsp")
require("my-config.linting")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.showmatch = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

vim.opt.autoread = true

vim.cmd.colorscheme("catppuccin")

