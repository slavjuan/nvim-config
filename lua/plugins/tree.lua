
require("nvim-tree").setup({
    filters = {
        dotfiles = true,
        custom = { "target" },
        exclude = { ".gitignore" },
    },
    actions = {
        open_file = {
            resize_window = true,
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
