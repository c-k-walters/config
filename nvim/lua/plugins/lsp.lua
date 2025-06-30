return {
    -- neovim lsp setup and lsp servers not included in mason
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            {
                "antosha417/nvim-lsp-file-operations",
                config = true,
                dependencies = { "nvim-lua/plenary.nvim" },
            },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local util = require("lspconfig.util")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local caps = cmp_nvim_lsp.default_capabilities()
            local opts = { noremap = true, silent = true }
            local on_attach = function(_, bufnr)
                opts.buffer = bufnr
                opts.desc = "Show documentation for what is under cursor"
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            end

            lspconfig["sourcekit"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })
        end,
    },
    -- mason lsp configs
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "clangd",
                "gh",
                "gopls",
                "html-lsp",
                "lua_ls",
                "zls",
            }
        }
    },
}
