
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
    sources = cmp.config.sources({
        { name = "nvim_lsp" }
    })
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in pairs(servers) do
	require("lspconfig")[lsp].setup({
       capabilities = capabilities,
	})
end
