require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- basic commands
map("n", "<S-s>", "<cmd>w<cr>", { desc = "write buffer", remap = true })
map("n", "<S-q>", "<cmd>q<cr>", { desc = "quit neovim", remap = true })


-- open telescope
map("n", "<S-f>", "<cmd>Telescope find_files<cr>", { desc = "telescope", remap = true })


-- toggle inlay hints
local hint = vim.lsp.inlay_hint

map("n", "<S-i>", function() hint.enable(not hint.is_enabled()) end, { desc = "toggle hints", remap = true })


-- tab navigation
local tabs = require("nvchad.tabufline")

map("n", "<S-PageDown>", function() tabs.next() end,  { desc = "next tab", remap = true })
map("n", "<S-PageUp>", function() tabs.prev() end,    { desc = "previous tab", remap = true })
map("n", "<S-w>", function() tabs.close_buffer() end, { desc = "close tab", remap = true })


-- close quickfix window
map("n", "<S-c>", "<cmd>ccl<cr>", { desc = "close quickfix window", remap = true })


-- new file
map("n", "<S-n>", "<cmd>NewFile<cr>",     { desc = "create new file", remap = true })
map("n", "<S-h>", "<cmd>NewFileHere<cr>", { desc = "create new file here", remap = true })


-- copy and paste
map("v", "<C-y>", "\"+y", { desc = "copy", remap = true })
map("n", "<C-p>", "\"+p", { desc = "paste", remap = true })


-- comment
map("v", "<C-_>", "gc",  { desc = "toggle comment", remap = true })
map("n", "<C-_>", "gcc", { desc = "toggle comment", remap = true })
