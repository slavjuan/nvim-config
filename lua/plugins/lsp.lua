
return {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
        -- lsp support
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        -- autocompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",

        -- snippets
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },
    build = ":MasonUpdate",
    config = function()
        local lsp = require("lsp-zero")

        lsp.preset("recommended")
        lsp.ensure_installed({
            "rust_analyzer",
        })

        local cmp = require("cmp")
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
        })

        lsp.set_preferences({
            sign_icons = { }
        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            if client.server_capabilities.documentSymbolProvider then
                -- require("nvim-navic").attach(client, bufnr)
            end

            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        end)

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true,
        })
    end,
}
