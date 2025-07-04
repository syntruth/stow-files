return {
  "xiyaowong/transparent.nvim",
  lazy = false, --this was SUPER IMPORTANT
  config = function()
    require("transparent").setup({ -- Optional, you don't have to run setup.
      groups = { -- table: default groups
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },

      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "TelescopeResultsNormal",
        "TelescopeResultsBorder",
        "TelescopePreviewNormal",
        "TelescopePreviewBorder",
        -- for all floating windows (ToggleTerm, LazyGit, Neovim leader menu, etc.)
        "NormalFloat",
        "FloatBorder",
        -- for all notifications
        "NotifyINFOBody",
        "NotifyWARNBody",
        "NotifyERRORBody",
        "NotifyDEBUGBody",
        "NotifyTRACEBody",
        "NotifyINFOBorder",
        "NotifyWARNBorder",
        "NotifyERRORBorder",
        "NotifyDEBUGBorder",
        "NotifyTRACEBorder",
      }, -- and this was super important as well
      exclude_groups = {}, -- table: groups you don't want to clear
    })
  end,
}
