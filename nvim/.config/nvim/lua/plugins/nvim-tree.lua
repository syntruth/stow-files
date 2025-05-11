return {
    "nvim-tree/nvim-tree.lua",

    version      = "*",
    lazy         = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    __config     = function()
        require("nvim-tree").setup {}
    end,
}
