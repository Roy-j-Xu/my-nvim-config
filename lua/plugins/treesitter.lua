return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require("nvim-treesitter").install {
            "rust",
            "go",
            "markdown",
        }
    end
}
