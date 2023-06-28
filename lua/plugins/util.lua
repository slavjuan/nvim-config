return {
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
    {
        "SmiteshP/nvim-navic",
        lazy = true,
    },
    {
        "jiangmiao/auto-pairs",
    },
    {
        "folke/which-key.nvim",
        init = function() 
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                direction = "float",
                shell = "powershell",
            })
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        cmd = {
            "NvimTreeOpen",
            "NvimTreeToggle",
        },
    },
    {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup({
                window = {
                    blend = 100,
                },
            })
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
        "lukas-reineke/indent-blankline.nvim",
        config = function() 
            require("indent_blankline").setup({
                show_end_of_line = false,
            })
        end,
    },
}
