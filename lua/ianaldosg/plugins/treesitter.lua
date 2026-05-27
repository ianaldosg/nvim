return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Em vez de require("nvim-treesitter.configs"), use:
    require("nvim-treesitter").setup({ -- Remova o ".configs"
      ensure_installed = { "lua", "vim", "vimdoc" }, -- coloque suas linguagens
      highlight = { enable = true },
    })
  end,
}

