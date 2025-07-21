return{
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()

		local lspconfig = require("lspconfig")

		lspconfig.clangd.setup({})
		lspconfig.ts_ls.setup({})
		lspconfig.sqls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.phpactor.setup({})
		lspconfig.jdtls.setup({})
		lspconfig.html.setup({})
		lspconfig.cssls.setup({})
		lspconfig.lua_ls.setup({})

		vim.lsp.enable({
			"server"
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
