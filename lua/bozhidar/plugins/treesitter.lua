return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})

		-- configure nvim-ts-autotag separately if needed
		require("nvim-ts-autotag").setup()

		-- configure nvim-tree
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			view = {
				width = 30,
				side = "left",
			},
			filters = {
				dotfiles = false,
			},
			actions = {
				open_file = {
					quit_on_open = false,
				},
			},
			tab = {
				sync = {
					open = true, -- Open the three automatically when switching tabs
					close = false, -- Do not close the three when switching tabs
				},
			},
		})
	end,
}
