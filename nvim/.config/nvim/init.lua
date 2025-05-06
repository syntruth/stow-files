require('config.options')
require('config.keybinds')
require('config.lazy')

-- Always split to the right or below the current buffer.
vim.opt.splitright  = true
vim.opt.splitbelow  = true

-- Set our color columns
vim.opt.colorcolumn = "72,80"

-- vim.cmd 'colorscheme railscasts'

-- Set the default 2 spaces instead of tabs
vim.opt.expandtab   = true
vim.opt.tabstop     = 2
vim.opt.shiftwidth  = 2
vim.bo.softtabstop  = 2

-- Use <space>y to copy lines to the MacOS clipboard.
vim.keymap.set({ 'v' }, '<C-c>', '"+y')
vim.keymap.set({ 'v' }, '<C-x>', '"+d')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
