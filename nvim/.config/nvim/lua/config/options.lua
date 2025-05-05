-- OPTIONS
local set = vim.opt

--line nums
set.relativenumber = true
set.number         = true

-- indentation and tabs
set.tabstop    = 2
set.shiftwidth = 2
set.autoindent = true
set.expandtab  = true

-- search settings
set.ignorecase = true
set.smartcase  = true

-- appearance
set.termguicolors = true
set.background    = "dark"
set.signcolumn    = "yes"

-- cursor line
set.cursorline = true

-- 72nd and 80th column
set.colorcolumn = "72,80"

-- clipboard
set.clipboard:append("unnamedplus")

-- backspace
set.backspace = "indent,eol,start"

-- split windows
set.splitbelow = true
set.splitright = true

-- dw/diw/ciw works on full-word
set.iskeyword:append("-")

-- keep cursor at least 8 rows from top/bot
set.scrolloff = 8

-- undo dir settings
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- incremental search
set.incsearch = true

-- faster cursor hold
set.updatetime = 50

-- Set up Mini Align
-- require('mini.align').setup()

vim.cmd 'colorscheme railscasts'

-- Make the background always transparent. ALWAYS...
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- Use <space>y to copy lines to the MacOS clipboard.
vim.keymap.set({'v'}, '<C-c>', '"+y')
vim.keymap.set({'v'}, '<C-x>', '"+d')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
