return {
    {
        "neanias/everforest-nvim",
        name = "everforest",
        lazy = true,
        priority = 1000,
        config = function() 
            require("everforest").setup({
                transparent_background_level = 2
            })
        end
    },
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        lazy = true,
        priority = 1000,
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                    modules = {
                        diagnostic = {
                            background=false,
                        },
                    }
                },
            })
        end
    },
}
