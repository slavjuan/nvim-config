local telescope = require("telescope")

telescope.load_extension("live_grep_args")
telescope.setup({
	defaults = {
		file_ignore_patterns = { ".git", "target", "node_modules" },
	},
})

