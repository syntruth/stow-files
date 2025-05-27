-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
  {
    "carakan/new-railscasts-theme",
    -- "lukelex/railscasts.nvim",
    -- dependencies = { "rktjmp/lush.nvim" },

    config = function()
      vim.cmd.colorscheme("new-railscasts")

      vim.cmd("hi Directory guibg=NONE")
      vim.cmd("hi SignColumn guibg=NONE")

      vim.cmd([[
        highlight normal guibg=none
        highlight nontext guibg=none
        highlight normal ctermbg=none
        highlight nontext ctermbg=none
      ]])

      enable_transparency()
    end,
  },
}
