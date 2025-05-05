return {
  -- Git plugin
  {
    'tpope/vim-fugitive',
  },

  -- Show historical versions of the file locally
  {
    'mbbill/undotree',
  },

  -- Show CSS Colors
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },

  -- Mini Align
  {
    'echasnovski/mini.align',
    version = false,

    config = function()
      require('mini.align').setup()
    end
  },
}
