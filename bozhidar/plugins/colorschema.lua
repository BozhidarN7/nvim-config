return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato", -- latte, frappe, macchiato, mocha
				integrations = {
					nvimtree = true,
					treesitter = true,
					telescope = true,
					cmp = true,
					gitsigns = true,
				},
			})

			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
