return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "rust",
                "markdown",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
        })
    end,
}
