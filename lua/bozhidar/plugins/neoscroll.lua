return {
	"karb94/neoscroll.nvim",
	config = function()
		local neoscroll = require("neoscroll")
		neoscroll.setup({})
		local keymap = {
			["K"] = function()
				neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
			end,
			["J"] = function()
				neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
			end,
		}
		local modes = { "n", "v", "x" }
		for key, func in pairs(keymap) do
			vim.keymap.set(modes, key, func)
		end
	end,
}
