return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true, -- start auto-save when loaded
			execution_message = {
				message = function()
					return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
				end,
				dim = 0.18,
				cleaning_interval = 1250,
			},
			events = { "InsertLeave", "TextChanged" }, -- triggers to auto-save
			conditions = {
				exists = true,
				filename_is_not = {},
				filetype_is_not = {},
				modifiable = true,
			},
			write_all_buffers = false, -- save only the active buffer
			debounce_delay = 135, -- debounce saves to prevent over-saving
		})
	end,
}
