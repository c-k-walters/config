return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile"},
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-context",
        },
        config = function()
            local ts = require("nvim-treesitter.configs")

            ts.setup({
                ensure_installed = {
                    "c", "cpp",
                    "dockerfile", "gitignore",
                    "html", "css",
                    "json", "yaml",
                    "kotlin",
                    "go",
                    "lua", "vim",
                    "markdown", "markdown_inline",
                    "regex",
                    "swift", "objc", "scss",
                    "sql",
                    "zig",
                },
                highlight = { 
                    enabled = true, 
                    additional_vim_regex_highlighting = false 
                },
                indent = { enabled = true },
            })
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function() end,
    }
}
