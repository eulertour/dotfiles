vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<ESC>:w<CR>", { desc = "Exit insert mode and save" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear swarch highlights", silent = true })

vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- windows
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

vim.keymap.set("n", "<leader>cw", ":w<CR>", { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>cwa", ":wa<CR>", { desc = "Save all buffers" })
vim.keymap.set("n", "<leader>ce", ":e<CR>", { desc = "Edit current file" })
vim.keymap.set("n", "<leader>cq", ":q<CR>", { desc = "Quit current file" })
vim.keymap.set("n", "<leader>cx", ":x<CR>", { desc = "Quit and save current file" })

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
