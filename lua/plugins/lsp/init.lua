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
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	-- install mason lsp-config (for ensure installed)
	{
		"williamboman/mason-lspconfig.nvim",
		opts = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"cssls",
					"emmet_language_server",
					"html",
					"lua_ls",
					"pyright",
					"tsserver",
				},
			})
		end,
	},

	-- install mason null-ls (for ensure installed)
	{
		"jay-babu/mason-null-ls.nvim",
		opts = function()
			require("mason-null-ls").setup({
				automatic_installation = false,
				ensure_installed = { "black", "djlint", "isort", "prettier", "stylua" },
			})
		end,
	},

	-- install nvim-lsp
	-- link to all server configs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	-- when I add a language server here, I also need to add it
	-- to /lua/plugins/completion/init.lua (to the list at the bottom)
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.emmet_language_server.setup({})
			lspconfig.cssls.setup({})
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.ts_ls.setup({})
		end,
	},
}
