return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
				ensure_installed = {
					"python",
					"javascript",
					"lua",
					"luadoc",
					"luap",
					"css",
					"html",
					"scala",
					"rust",
					"markdown",
					"markdown_inline",
				},
			})
		end,
	},
}
