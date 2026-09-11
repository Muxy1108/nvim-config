return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "lua_ls",
                    "ts_ls",
                    "html",
                    "cssls",
                    "jsonls",
                },
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function(_, bufnr)
                local opts = { buffer = bufnr }

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
                vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
                vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
            end

            local servers = {
                "clangd",
                "pyright",
                "lua_ls",
                "ts_ls",
                "html",
                "cssls",
                "jsonls",
            }

            for _, server in ipairs(servers) do
                vim.lsp.config(server, {
                    capabilities = capabilities,
                    on_attach = on_attach,
                })

                vim.lsp.enable(server)
            end
        end,
    },
}
