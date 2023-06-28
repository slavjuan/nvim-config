-- NORMAL
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- -- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- -- NvimTree
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")

-- -- Fugitive
vim.keymap.set("n", "<leader>gg", "<cmd>G<CR>")

-- VISUAL
vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
