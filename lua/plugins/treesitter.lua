return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "cpp",
                    "lua",
                    "vim",
                    "vimdoc",
                    "python",
                    "javascript",
                    "typescript",
                    "vue",
                    "html",
                    "css",
                    "json",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "verilog",
                },
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
            })
        end,
    },
}
