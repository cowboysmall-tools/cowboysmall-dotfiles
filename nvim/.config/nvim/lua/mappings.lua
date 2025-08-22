require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


map("n", "<Leader>ii", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
