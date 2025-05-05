-- KEYBINDS
vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z") -- Remap joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") -- center screen when looping search results
vim.keymap.set("n", "N", "Nzzzv")

-- reload without exiting vim
vim.keymap.set("n", "<leader>rl", "<cmd>source ~/.config/nvim/init.lua<cr>")

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- source file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
