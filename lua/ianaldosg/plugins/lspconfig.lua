return{
    "neovim/nvim-lspconfig",
    dependencies = {
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim",
            fr = "lua",
            opts = {
                library = {
                    {path = "${3rd}/luv/library", words = { "vim%.uv"} },
                },
            },
        },
    },
    config = function()

        local capabilities = require('blink.cmp').get_lsp_capabilities()

        local lspconfig = require("lspconfig")

        lspconfig.clangd.setup({capabilities = capabilities})
        lspconfig.ts_ls.setup({capabilities = capabilities})
        lspconfig.sqls.setup({capabilities = capabilities})
        lspconfig.pyright.setup({capabilities = capabilities})
        lspconfig.phpactor.setup({capabilities = capabilities})
        lspconfig.jdtls.setup({capabilities = capabilities})
        lspconfig.html.setup({capabilities = capabilities})
        lspconfig.cssls.setup({capabilities = capabilities})
        lspconfig.lua_ls.setup({capabilities = capabilities})

        vim.lsp.enable({
            "clangd",
            "ts_ls",
            "sqls",
            "pyright",
            "phpactor",
            "jdtls",
            "html",
            "cssls",
            "lua_ls"
		})

		vim.diagnostic.config({
			virtual_lines = true,
			--virtual_text = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
			float = {
				border = "rounded",
				source = true,
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚 ",
					[vim.diagnostic.severity.WARN] = "󰀪 ",
					[vim.diagnostic.severity.INFO] = "󰋽 ",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
				},
				numhl = {
					[vim.diagnostic.severity.ERROR] = "ErrorMsg",
					[vim.diagnostic.severity.WARN] = "WarningMsg",
				},
			},
		})


	end,
}
