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

    -- LSP
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
        build = ":MasonUpdate",
    },

	-- ui theme
	{
        "rose-pine/neovim",
        name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				disable_background = true,
				disable_float_background = true,
			})

			vim.cmd("colorscheme rose-pine")
		end
	},
    {
        "nvim-lualine/lualine.nvim",
        config = function() 
            require("lualine").setup({
                options = {
                    theme = "rose-pine",
                },
            })
        end,
    }
})
