vim.keymap.set("i", "jj", "<ESC>:w<CR>", { desc = "Exit insert mode and save" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear swarch highlights", silent = true })
-- vim.keymap.set("n", "<C-c>", ":NoiceDismiss<CR>", { desc = "Dismiss noice message" })
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlights and noice messages", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines down" })

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- windows
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

vim.keymap.set("n", "<leader>cw", ":w<CR>", { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>cwa", ":wa<CR>", { desc = "Save all buffers" })
vim.keymap.set("n", "<leader>ce", ":e<CR>", { desc = "Edit current file" })
vim.keymap.set("n", "<leader>cx", ":x<CR>", { desc = "Quit and save current file" })
vim.keymap.set("n", "<leader>cq", ":q<CR>", { desc = "Quit current file" })
vim.keymap.set("n", "<leader>cqa", ":qa<CR>", { desc = "Close all buffers" })
vim.keymap.set("n", "<leader>cwqa", ":wqa<CR>", { desc = "Save and close all buffers" })

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
vim.keymap.set("n", "g>", "<cmd>tabmove +1<CR>", { desc = "Move current tab right" })
vim.keymap.set("n", "g<", "<cmd>tabmove -1<CR>", { desc = "Move current tab left" })

-- refactoring
vim.keymap.set(
	"n",
	"<leader>rr",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace beneath cursor in buffer" }
)
