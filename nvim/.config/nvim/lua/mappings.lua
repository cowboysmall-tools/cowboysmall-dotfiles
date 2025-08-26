require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- basic nvim commands
map("n", "<S-w>",     "<cmd>w<CR>",   { desc = "write buffer",   remap = true })
map("n", "<S-Left>",  "<C-h>",        { desc = "left panel",     remap = true })
map("n", "<S-Right>", "<C-l>",        { desc = "right panel",    remap = true })
map("n", "<S-c>",     "<cmd>ccl<CR>", { desc = "close quickfix", remap = true })
map("n", "<S-q>",     "<cmd>q<CR>",   { desc = "quit neovim",    remap = true })

-- tab operations
local tabufline = require("nvchad.tabufline")
local next_tab  = function() tabufline.next() end
local prev_tab  = function() tabufline.prev() end
local close_tab = function() tabufline.close_buffer() end

map("n", "<S-PageDown>", next_tab,  { desc = "next tab",     remap = true })
map("n", "<S-PageUp>",   prev_tab,  { desc = "previous tab", remap = true })
map("n", "<S-x>",        close_tab, { desc = "close tab",    remap = true })

-- editor operations (cut, copy, paste, and comment)
map("v", "<C-d>", "\"+d", { desc = "cut",     remap = true })
map("v", "<C-y>", "\"+y", { desc = "copy",    remap = true })
map("n", "<C-p>", "\"+p", { desc = "paste",   remap = true })
map("v", "<C-_>", "gc",   { desc = "comment", remap = true })
map("n", "<C-_>", "gcc",  { desc = "comment", remap = true })

-- file operations
map("n", "<M-n>", "<cmd>NewFile<CR>",              { desc = "new file",      remap = true })
map("n", "<M-h>", "<cmd>NewFileHere<CR>",          { desc = "new file here", remap = true })
map("n", "<M-f>", "<cmd>Telescope find_files<CR>", { desc = "telescope",     remap = true })

-- toggle inlay hints
local inlay_hint        = vim.lsp.inlay_hint
local toggle_inlay_hint = function() inlay_hint.enable(not inlay_hint.is_enabled()) end
map("n", "<M-i>", toggle_inlay_hint, { desc = "toggle hints",  remap = true })
