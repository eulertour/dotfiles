return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    vim.keymap.set("n", "<leader>cc", ":ClaudeCode<CR>", { desc = "Claude Code" })
    require("claude-code").setup({
      window = {
        position = "vertical"
      }
    })
  end
}
