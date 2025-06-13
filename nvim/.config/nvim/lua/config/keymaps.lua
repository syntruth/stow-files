-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Use <space>y to copy lines to the MacOS clipboard.
vim.keymap.set({ "v" }, "<C-c>", '"+y')
vim.keymap.set({ "v" }, "<C-x>", '"+d')

-- Use <leader>gb for Git Branch Picker.
vim.keymap.set({ "n" }, "<leader>gb", Snacks.picker.git_branches)
