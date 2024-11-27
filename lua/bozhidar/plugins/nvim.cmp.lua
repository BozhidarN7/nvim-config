return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").snippet_expand(args.body) -- Use LuaSnip for snippets
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, -- LSP source
				{ name = "luasnip" }, -- LuaSnip source
				{ name = "buffer" }, -- Buffer source
				{ name = "path" }, -- Path completion source (from cmp-path)
			}),
		})
	end,
}
