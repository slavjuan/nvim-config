
require('nvim-treesitter.configs').setup({
	ensure_installed = {
		"lua",
		"rust",
        "html",
        "markdown",
        "typescript",
        "javascript",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
