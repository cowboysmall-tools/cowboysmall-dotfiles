require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- map("n", "<S-s>", "<cmd>w<cr>")
map("n", "<S-q>", "<cmd>q<cr>")


map("n", "<S-f>", "<cmd>Telescope find_files<cr>")

map("n", "<S-h>", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)


map("n", "<S-PageDown>", function()
  require("nvchad.tabufline").next()
end)

map("n", "<S-PageUp>", function()
  require("nvchad.tabufline").prev()
end)

map("n", "<S-w>", function()
  require("nvchad.tabufline").close_buffer()
end)
