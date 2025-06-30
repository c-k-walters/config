return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            picker = { enabled = true },
        },
        keys = {
            -- find ...
            { "<leader>ff", function() Snacks.picker.files() end,                desc = "Smart Find Files" },
            { "<leader>fg", function() Snacks.picker.git_files() end,            desc = "Find Git Files" },
            { "<leader>fr", function() Snacks.picker.recent() end,               desc = "Recent" },
            { "<leader>fp", "<cmd>Ex<cr>",                                       desc = "Recent" },
            -- seach for
            { "<leader>sg", function() Snacks.picker.grep() end,                 desc = "Grep" },
            { "<leader>sd", function() Snacks.picker.diagnostics() end,          desc = "Diagnostics" },
            { "<leader>ss", function() Snacks.picker.lsp_symbols() end,          desc = "LSP Symbols" },
            -- git ...
            { "<leader>gb", function() Snacks.picker.git_branches() end,         desc = "Git Branches" },
            { "<leader>gl", function() Snacks.picker.git_log() end,              desc = "Git Log" },
            { "<leader>gL", function() Snacks.picker.git_log_line() end,         desc = "Git Log Line" },
            { "<leader>gs", function() Snacks.picker.git_status() end,           desc = "Git Status" },
            { "<leader>gS", function() Snacks.picker.git_stash() end,            desc = "Git Stash" },
            { "<leader>gd", function() Snacks.picker.git_diff() end,             desc = "Git Diff (Hunks)" },
            -- LSP
            { "gd",         function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
            { "gD",         function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
            { "gr",         function() Snacks.picker.lsp_references() end,       nowait = true,                  desc = "References" },
            { "gI",         function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
            { "gy",         function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },

        },
    },
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup {}
        end,
    },
}
