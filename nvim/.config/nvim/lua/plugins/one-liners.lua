-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- Mini Align
  {
    "nvim-mini/mini.align",

    version = "*",

    config = function()
      require("mini.align").setup()
    end,
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "glimmer",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  { "lukas-reineke/virt-column.nvim", opts = {} },

  { "brianhuster/treesitter-endwise.nvim" },

  { "rktjmp/shipwright.nvim" },
}
