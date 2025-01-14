return {
	"echasnovski/mini.files",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mini.files").setup()
		vim.keymap.set("n", "<leader>mf", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open mini.files" })
	end,
}
