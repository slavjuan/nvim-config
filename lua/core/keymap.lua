
local map = vim.keymap.set

vim.g.mapleader = " "

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
