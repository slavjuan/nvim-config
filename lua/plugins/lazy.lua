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

	-- color theme
	{ 
		'rose-pine/neovim', 
		name = 'rose-pine',
		config = function()
			require("rose-pine").setup({
				variant = 'moon',
				disable_background = true,	
				disable_float_background = true,
			})

			vim.cmd("colorscheme rose-pine")
		end
	}
})
