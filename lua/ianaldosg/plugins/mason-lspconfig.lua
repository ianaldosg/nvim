return{
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "clangd",
            "ts_ls",
            "sqls",
            "pyright",
            "phpactor",
            "jdtls",
            "html",
            "cssls",
            "lua_ls"
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    automatic_enable = true,
}
