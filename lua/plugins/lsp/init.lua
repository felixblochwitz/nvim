return {
  -- install mason
  -- basic install so far -> TODO: see if there are any options I might need
  {
    "williamboman/mason.nvim",
    opts = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      }
      )
    end,
  },

  -- install nvim-lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").pyright.setup {}
      require("lspconfig").lua_ls.setup {}
    end,
  }
}
