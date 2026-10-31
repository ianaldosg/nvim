return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "moon", -- Opções: "storm", "moon", "night", "day"
        transparent = true, -- Ativa a transparência
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
    },
    config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd.colorscheme("tokyonight")
    end,
}

