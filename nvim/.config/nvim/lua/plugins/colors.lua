-- Make the background always transparent. ALWAYS...
-- vim.cmd [[
--   highlight Normal guibg=none
--   highlight NonText guibg=none
--   highlight Normal ctermbg=none
--   highlight NonText ctermbg=none
-- ]]

local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
  {
    "lukelex/railscasts.nvim",

    dependencies = { "rktjmp/lush.nvim" },
    name         = 'railscast',

    config = function()
      vim.cmd.colorscheme = 'railscast'
      vim.cmd('hi Directory guibg=NONE')
      vim.cmd('hi SignColumn guibg=NONE')
      enable_transparency()
    end
  }
}
