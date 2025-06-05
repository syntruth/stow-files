return {
  {
    -- "carakan/new-railscasts-theme",
    "lukelex/railscasts.nvim",
    dependencies = { "rktjmp/lush.nvim" },

    config = function()
      vim.cmd.colorscheme("railscasts")

      vim.cmd("hi Directory guibg=NONE")
      vim.cmd("hi SignColumn guibg=NONE")

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    end,
  },

  {
    "everviolet/nvim",
    name = "evergarden",
    priority = 1000,
    opts = {
      theme = {
        variant = "fall", -- 'winter'|'fall'|'spring'|'summer'
        accent = "green",
      },

      editor = {
        transparent_background = true,

        sign = { color = "none" },

        float = {
          color = "mantle",
          invert_border = false,
        },

        completion = {
          color = "surface0",
        },
      },
    },
  },

  {
    "xero/miasma.nvim",
    lazy = false,
  },

  {
    "savq/melange-nvim",
  },

  {
    "rebelot/kanagawa.nvim",

    opts = {
      transparent = true,
    },
  },
}
