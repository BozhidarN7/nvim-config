return {
	"stevearc/resession.nvim",
	config = function()
		local resession = require("resession")
		resession.setup({
			-- Configuration options
			autosave = {
				enabled = true, -- Automatically save sessions
				interval = 60, -- Autosave interval in seconds
			},
			autoload = {
				enabled = true, -- Automatically load sessions
				mode = "cwd", -- Load session for the current working directory
			},
			tabpages = {
				enabled = true, -- Save and restore tab pages
			},
		})

		-- Keybindings (optional)
		local keymap = vim.keymap
		keymap.set("n", "<leader>wr", resession.load, { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", resession.save, { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
		keymap.set("n", "<leader>wd", resession.delete, { desc = "Delete session" })
	end,
}
