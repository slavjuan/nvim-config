return {
    "nvim-telescope/telescope.nvim",
    config = function()
        local builtin = require("telescope.builtin")

        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    ".git",
                    "node_modules",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })
    end
}
