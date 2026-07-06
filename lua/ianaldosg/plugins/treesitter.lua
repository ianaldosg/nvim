return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- Em vez de require("nvim-treesitter.configs"), use:
        require("nvim-treesitter").setup({ -- Remova o ".configs"
            ensure_installed = {

                "c",
                "cpp",
                "rust",

                "lua",

                "python",

                "bash",

                "cmake",

                "json",

                "yaml",

                "toml",

                "markdown",

                "markdown_inline",

                "vim",

                "vimdoc",

                "query",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

