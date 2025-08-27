require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")



-- basic nvim commands
map("n", "<S-w>", "<cmd>w<CR>", { desc = "write buffer", remap = true })
map("n", "<S-Left>", "<C-h>", { desc = "left panel", remap = true })
map("n", "<S-Right>", "<C-l>", { desc = "right panel", remap = true })
map("n", "<S-c>", "<cmd>ccl<CR>", { desc = "close quickfix", remap = true })
map("n", "<S-q>", "<cmd>q<CR>", { desc = "quit neovim", remap = true })
map("n", "<S-t>", "<leader>h", { desc = "new terminal", remap = true })

map("n", "<S-n>", "<cmd>NewFile<CR>", { desc = "new file", remap = true })
map("n", "<S-h>", "<cmd>NewFileHere<CR>", { desc = "new file here", remap = true })
map("n", "<S-f>", "<cmd>Telescope find_files<CR>", { desc = "telescope", remap = true })

map("n", "<S-PageDown>", "<tab>", { desc = "next tab", remap = true })
map("n", "<S-PageUp>", "<S-tab>", { desc = "previous tab", remap = true })
map("n", "<S-x>", "<leader>x", { desc = "close tab", remap = true })


-- editor operations (cut, copy, paste, and comment)
map("v", "<C-d>", "\"+d", { desc = "cut", remap = true })
map("v", "<C-y>", "\"+y", { desc = "copy", remap = true })
map("n", "<C-p>", "\"+p", { desc = "paste", remap = true })
map("v", "<C-_>", "gc", { desc = "comment", remap = true })
map("n", "<C-_>", "gcc", { desc = "comment", remap = true })




-- toggle inlay hints
local inlay_hint        = vim.lsp.inlay_hint
local toggle_inlay_hint = function() inlay_hint.enable(not inlay_hint.is_enabled()) end

map("n", "<M-i>", toggle_inlay_hint, { desc = "toggle hints", remap = true })



-- tree related overrides
local nvim_tree = require("nvim-tree.api")

local function clear_and_copy()
  nvim_tree.fs.clear_clipboard()
  nvim_tree.fs.copy.node()
end

local function clear_and_cut()
  nvim_tree.fs.clear_clipboard()
  nvim_tree.fs.cut()
end

local function copy_file_to()
  local file_src = nvim_tree.tree.get_node_under_cursor()["absolute_path"]
  local input_opts = { prompt = "Copy to ", default = file_src, completion = "file" }

  vim.ui.input(input_opts, function(file_out)
    local dir = vim.fn.fnamemodify(file_out, ":h")

    vim.fn.system { "mkdir", "-p", dir }
    vim.fn.system { "cp", "-R", file_src, file_out }
  end)
end

local function move_file_to()
  local file_src = nvim_tree.tree.get_node_under_cursor()["absolute_path"]
  local input_opts = { prompt = "Move to ", default = file_src, completion = "file" }

  vim.ui.input(input_opts, function(file_out)
    local dir = vim.fn.fnamemodify(file_out, ":h")

    vim.fn.system { "mkdir", "-p", dir }
    vim.fn.system { "mv", file_src, file_out }
  end)
end

map("n", "c", clear_and_copy, { desc = "copy file", remap = true })
map("n", "x", clear_and_cut, { desc = "cut file", remap = true })
map("n", "<M-c>", copy_file_to, { desc = "copy file to", remap = true })
map("n", "<M-x>", move_file_to, { desc = "move file to", remap = true })
