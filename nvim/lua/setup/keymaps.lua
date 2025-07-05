-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- [W]indow:
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "[W]indow: Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "[W]indow: Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "[W]indow: Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "[W]indow: Move focus to the upper window" })
vim.keymap.set("n", "<leader>wj", "<C-w><C-s>", { desc = "[W]indow: Open split below" })
vim.keymap.set("n", "<leader>wl", "<C-w><C-v>", { desc = "[W]indow: Open split right" })
vim.keymap.set("n", "<leader>wtl", "<C-w><C-v><cmd>term<cr>", { desc = "[W]indow: Open term split right" })
vim.keymap.set("n", "<leader>wtj", "<C-w><C-s><cmd>term<cr>", { desc = "[W]indow: Open term split down" })
vim.keymap.set("n", "<leader>wq", "<C-w><C-q>", { desc = "[W]indow: Close current window" })
vim.keymap.set("n", "<C-q>", "<C-w><C-q>", { desc = "[W]indow: Close current window" })
--

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- recenter cursor after scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>lsp", "<cmd>LspRestart<cr>")
