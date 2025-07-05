return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        lazy = false,
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            vim.g.gruvbox_material_enable_italic = true
            vim.cmd.colorscheme("gruvbox-material")
        end,
    },
}
