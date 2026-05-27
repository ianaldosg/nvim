return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    {
      "folke/lazydev.nvim",
      ft = "lua", -- corrigido (era "fr")
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          { path = "/usr/share/hypr/stubs/", words = { "hl%."} },
        },
      },
    },
  },

  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    -- ========================
    -- CONFIGURAÇÃO DOS SERVERS
    -- ========================

    vim.lsp.config("clangd", {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=never",
        "--query-driver=/usr/bin/g++",
      },
      capabilities = capabilities,
    })

    local servers = {
      "ts_ls",
      "sqls",
      "pyright",
      "phpactor",
      "jdtls",
      "html",
      "cssls",
      "lua_ls",
    }

    for _, server in ipairs(servers) do
        local config = { capabilities = capabilities}

        if server == "lua_ls" then
            config.settings = {
                Lua = {
                    diagnostics = {
                        globals = {"hl", "vim" }
                    }
                }
            }
        end
        vim.lsp.config(server, config)
    end

    -- ========================
    -- ATIVAR LSPs
    -- ========================

    vim.lsp.enable({
      "clangd",
      "ts_ls",
      "sqls",
      "pyright",
      "phpactor",
      "jdtls",
      "html",
      "cssls",
      "lua_ls",
    })

    -- ========================
    -- DIAGNOSTICS
    -- ========================

    vim.diagnostic.config({
      virtual_lines = true,
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
      },
    })
  end,
}
