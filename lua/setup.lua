local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
    "nvim-treesitter/nvim-treesitter-context",

    -- git
    "f-person/git-blame.nvim",

	-- Sidebar
	"nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

    -- LSP
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/cmp-path",
            "hrsh7th/vim-vsnip",
        },
        build = ":MasonUpdate",
    },

    -- IDE
    {
        "folke/trouble.nvim",
        config=true,
    },
    {
        "windwp/nvim-autopairs",
        config = true,
    },
    {
        "akinsho/toggleterm.nvim",
        config = true,
    },

    -- ui theme
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        lazy = false,
        config = function()
            require("nightfox").setup({
                options = {
                    transparent=true,
                    modules = {
                        diagnostic = {
                            background=false,
                        },
                    }
                },
			})

			vim.cmd("colorscheme carbonfox")
            
		end
	},
    {
        "nvim-lualine/lualine.nvim",
        config = function() 
            require("lualine").setup({
                options = {
                    theme = "carbonfox",
                },
            })
        end,
    },
    {
		"folke/which-key.nvim",
		config = true,
	},
})
