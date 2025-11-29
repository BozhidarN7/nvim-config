return {
	"iamcco/markdown-preview.nvim",
	ft = { "markdown" },
	cmd = { "MarkdownPreview", "MarkdownPreviewToggle", "MarkdownPreviewStop" },
	build = function()
		vim.fn.jobstart(
			{ "npm", "install" },
			{ cwd = vim.fn.expand("$HOME/.local/share/nvim/lazy/markdown-preview.nvim/app") }
		)
	end,

	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_auto_start = 0
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_preview_options = {
			maid = { theme = vim.o.background == "dark" and "dark" or "default" },
			disable_sync_scroll = 0,
			sync_scroll_type = "middle",
			hide_yaml_meta = 1,
		}
	end,
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function()
				local opts = { noremap = true, silent = true, buffer = true }
				vim.keymap.set("n", "<leader>mp", "<Cmd>MarkdownPreviewToggle<CR>", opts)
				vim.keymap.set("n", "<leader>ms", "<Cmd>MarkdownPreview<CR>", opts)
				vim.keymap.set("n", "<leader>mq", "<Cmd>MarkdownPreviewStop<CR>", opts)
			end,
		})
	end,
}
