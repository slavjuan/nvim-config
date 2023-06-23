
local map = vim.keymap.set

vim.g.mapleader = " "

-- nvim
map("n", "<C-l>", "<cmd>bnext<CR>")
map("n", "<C-h>", "<cmd>bprev<CR>")

-- terminal
map({ "n", "t" }, "<C-t>", "<cmd>ToggleTerm<CR>")

-- tree
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fg", "<cmd>Telescope live_grep_args<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
