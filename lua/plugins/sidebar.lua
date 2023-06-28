return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            disable_netrw = true,
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            renderer = {
                root_folder_label = false,
            },
            view = {
                side = "left",
                width = 35,
            },
            git = {
                enable = false,
            },
        })
    end
}
