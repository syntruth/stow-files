return {
  {
    -- "carakan/new-railscasts-theme",
    "lukelex/railscasts.nvim",
  },

  {
    "ptdewey/monalisa-nvim",

    priority = 1000,
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
