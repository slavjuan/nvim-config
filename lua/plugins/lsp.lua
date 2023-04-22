

local cmp = require("cmp")
local servers = {
    "lua_ls",
	"rust_analyzer",
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
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in pairs(servers) do
	require("lspconfig")[lsp].setup({
       capabilities = capabilities,
	})
end
