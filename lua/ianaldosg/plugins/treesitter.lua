return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- O uso correto recomendado é através do módulo de configuração
        local configs = require("nvim-treesitter.configs")
        configs.setup({
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
                "html", -- Adicionado para resolver seu problema
                "css",  -- Adicionado para ajudar com as classes de estilo
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

