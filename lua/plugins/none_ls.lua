return {
	"nvimtools/none-ls.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "nvim-lua/plenary.nvim" },
	opts = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
				-- can add more formatters by setting null_ls.builtins.formatting.<formatter>
			},
		})
	end,
}
