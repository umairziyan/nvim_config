return {
	"lewis6991/gitsigns.nvim",
	"tpope/vim-fugitive",
	config = function()
		require("gitsigns").setup()

		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
	end,
}
