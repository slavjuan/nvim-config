

local cmp = require("cmp")
local servers = {
    "lua_ls",
	"rust_analyzer",
    "tsserver",
    "eslint",
    "emmet_ls",
    "html",
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers,
})

cmp.setup({
    snippet = {
       expand = function(args)
           vim.fn["vsnip#anonymous"](args.body)
       end,
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = 'vsnip' },
    }),
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    experimental = {
        -- ghost_text = true,
    },
})

local opts = { noremap = true, silent = true }
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function (client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition")
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover<CR>", opts)
end

for _, lsp in pairs(servers) do
	require("lspconfig")[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
	})
end
