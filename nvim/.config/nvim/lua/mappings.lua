require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- basic nvim commands
map("n", "<S-q>", "<cmd>q<CR>", { desc = "quit neovim", remap = true })
map("n", "<S-w>", "<cmd>w<CR>", { desc = "write buffer", remap = true })
map("n", "<S-t>", "<leader>h", { desc = "new terminal", remap = true })
map("n", "<S-x>", "<leader>x", { desc = "close tab", remap = true })
map("n", "<S-c>", "<cmd>ccl<CR>", { desc = "close quickfix", remap = true })

map("n", "<S-h>", "<cmd>NewFileHere<CR>", { desc = "new file here", remap = true })
map("n", "<S-n>", "<cmd>NewFile<CR>", { desc = "new file", remap = true })
map("n", "<S-f>", "<cmd>Telescope find_files<CR>", { desc = "telescope", remap = true })

map("n", "<S-Left>", "<C-h>", { desc = "left panel", remap = true })
map("n", "<S-Right>", "<C-l>", { desc = "right panel", remap = true })
map("n", "<S-PageDown>", "<tab>", { desc = "next tab", remap = true })
map("n", "<S-PageUp>", "<S-tab>", { desc = "previous tab", remap = true })


-- toggle inlay hints
map("n", "<S-i>", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "toggle hints", remap = true })


map("n", "<A-t>", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })


-- editor operations (cut, copy, paste, and comment)
map("v", "<C-d>", "\"+d", { desc = "cut", remap = true })
map("v", "<C-y>", "\"+y", { desc = "copy", remap = true })
map("n", "<C-p>", "\"+p", { desc = "paste", remap = true })
map("v", "<C-_>", "gc", { desc = "comment", remap = true })
map("n", "<C-_>", "gcc", { desc = "comment", remap = true })
