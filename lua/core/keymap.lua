
local map = vim.keymap.set

vim.g.mapleader = " "

-- nvim
-- map({ "n", "i" }, "<M-j>", "<cmd>m+<CR>")
-- map({ "n", "i" }, "<M-k>", "<cmd>m-2<CR>")

-- tree
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
