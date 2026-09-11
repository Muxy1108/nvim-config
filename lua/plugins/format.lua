return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    python = { "black" },
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    vue = { "prettier" },
                    html = { "prettier" },
                    css = { "prettier" },
                    json = { "prettier" },
                    markdown = { "prettier" },
                    cpp = { "clang_format" },
                    c = { "clang_format" },
                },
            })

            vim.keymap.set("n", "<leader>f", function()
                require("conform").format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 1000,
                })
            end, { desc = "Format file" })
        end,
    },
}
