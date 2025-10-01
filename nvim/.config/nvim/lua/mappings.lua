require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- NVChad Maintenance Commands
map("n", "<M-m>", "<cmd>MasonInstallAll<CR>", { desc = "MasonInstallAll", remap = true })
map("n", "<M-l>", "<cmd>Lazy sync<CR>", { desc = "Lazy sync", remap = true })

-- toggle transparency
map("n", "<M-t>", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })

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

-- editor operations (cut, copy, paste, and comment)
map("v", "<C-d>", "\"+d", { desc = "cut", remap = true })
map("v", "<C-y>", "\"+y", { desc = "copy", remap = true })
map("n", "<C-p>", "\"+p", { desc = "paste", remap = true })
map("n", "<C-_>", "gcc", { desc = "comment", remap = true })
map("v", "<C-_>", "gc", { desc = "comment", remap = true })

-- vimtex commands (add more as needed)
map("n", "<S-M-i>", "<localleader>lI", { desc = "vimtex info", remap = true })
map("n", "<S-M-t>", "<localleader>lT", { desc = "vimtex toc toggle", remap = true })
map("n", "<S-M-v>", "<localleader>lv", { desc = "vimtex view", remap = true })
map("n", "<S-M-c>", "<localleader>ll", { desc = "vimtex compile", remap = true })
map("n", "<S-M-s>", "<localleader>lK", { desc = "vimtex stop", remap = true })
map("n", "<S-M-d>", "<localleader>lC", { desc = "vimtex clean", remap = true })

-- toggle inlay hints
-- map("n", "<C-M-h>", function()
--   vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
-- end, { desc = "toggle hints", remap = true })

