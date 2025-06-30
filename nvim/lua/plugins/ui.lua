return {
    -- theme!
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_enable_italic = true
            vim.cmd.colorscheme('gruvbox-material')
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons", },
        config = function()
            local api = require("nvim-tree.api")

            local function open()
                local node = api.tree.get_node_under_cursor()
                if node.nodes == nil then
                    api.node.open.tab()
                    api.tree.close()
                else
                    api.node.open.edit()
                end
            end
            local function prev()
                local node = api.tree.get_node_under_cursor()
                if node.nodes == nil then
                    api.node.open.preview()
                else
                    api.node.open.edit()
                end
            end

            local function my_on_attach(bufnr)
                local function opts(desc)
                    return {
                        desc = "nvim-tree: " .. desc,
                        buffer = bufnr,
                        noremap = true,
                        silent = true,
                        nowait = true,
                    }
                end

                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.set("n", "h", api.tree.close, opts("Close"))
                vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse all"))
                vim.keymap.set("n", "l", open, opts("Edit or open"))
                vim.keymap.set("n", "L", prev, opts("Preview"))
            end

            require("nvim-tree").setup {
                on_attach = my_on_attach,
                update_focused_file = {
                    enable = true,
                    update_cwd = false,
                    update_root = false,
                },
                respect_buf_cwd = true,
            }

            local function descMap(desc)
                return {
                    desc = "Nnvim tree: " .. desc,
                    silent = true,
                    noremap = true,
                }
            end

            vim.keymap.set("n", "<leader>e", api.tree.toggle, descMap("Toggle Tree"))
            vim.keymap.set("n", "<leader>pv", api.tree.toggle, descMap("Toggle Tree"))
            vim.keymap.set("n", "<leader>tf", api.tree.focus, descMap("Toggle Tree"))
        end,
    },
    {
        "folke/snacks.nvim",
        opts = {
            scroll = { enabled = false },
        },
        keys = {},
    },
    -- buffer top line
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<leader>j", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer tab" },
            { "<leader>k", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev buffer tab" },
        },
        opts = {
            options = {
                mode = "tabs",
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        },
    },
    -- status line
    {
        "nvim-lualine/lualine.nvim",
        opts = {}
    },
    -- which key
    {
        "folke/which-key.nvim",
        opts = {}
    },
}
