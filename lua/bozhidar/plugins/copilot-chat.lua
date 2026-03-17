return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- Make sure Copilot is available
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim", optional = true },
		},
		config = function()
			require("CopilotChat").setup({
				show_help = true, -- show help in response
				model = "gpt-5.2",
			})
		end,
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
			{ "<leader>cp", "<cmd>CopilotChatPrompts<CR>", mode = "v", desc = "Select Prompt Template" },
			{ "<leader>cp", "<cmd>CopilotChatPrompts<CR>", desc = "Select Prompt Template" },
		},
	},
}
