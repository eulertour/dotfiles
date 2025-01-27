return {
	"echasnovski/mini.files",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mini.files").setup()

		local function open_and_reveal_file()
			MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
		end

		vim.keymap.set("n", "<leader>mf", open_and_reveal_file)
	end,
}
