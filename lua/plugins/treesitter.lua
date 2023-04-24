
require('nvim-treesitter.configs').setup({
	ensure_installed = {
		"lua",
		"rust",
        "html",
        "css",
        "markdown",
        "tsx",
        "typescript",
        "javascript",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
