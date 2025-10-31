return {
  {
    "syntruth/monalisa-bright-nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "ptdewey/monalisa-nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "iagorrr/noctishc.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "akai54/2077.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "dgox16/oldworld.nvim",
    lazy = false,
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
