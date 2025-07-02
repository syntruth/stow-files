-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- OPTIONS
local opt = vim.opt

--line nums
opt.relativenumber = true
opt.number = true

-- indentation and tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

-- 80th column
opt.colorcolumn = "80"

-- split windows
opt.splitbelow = true
opt.splitright = true

-- Simple Autocmds
vim.cmd([[autocmd FileType ruby setlocal indentkeys-=.]])
