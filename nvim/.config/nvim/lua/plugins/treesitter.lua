return {
    {
        "nvim-treesitter/nvim-treesitter",

        build = ":TSUpdate",

        dependencies = {
            "RRethy/nvim-treesitter-endwise"
        },

        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                -- enable syntax highlighting
                highlight = { enable = true, },

                -- enable indentation
                -- indent = { enable = true },

                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },

                -- ensure these language parsers are installed
                ensure_installed = {
                    "bash",
                    "c",
                    "css",
                    "dockerfile",
                    "gitignore",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "query",
                    "ruby",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "yaml"
                },

                -- auto install above language parsers
                auto_install = false,
            })
        end
    }
}
