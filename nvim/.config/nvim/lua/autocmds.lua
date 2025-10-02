require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd


autocmd("LspAttach", {
  callback = function(e)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, { buffer = e.buf })
    end

    bufmap("n", "<C-M-b>", "<cmd>lua vim.lsp.buf.definition()<CR>")
    bufmap("n", "<C-M-t>", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
    bufmap("n", "<C-M-d>", "<cmd>lua vim.lsp.buf.declaration()<CR>")
    bufmap("n", "<C-M-r>", "<cmd>lua vim.lsp.buf.references()<CR>")
    bufmap("n", "<C-M-i>", "<cmd>lua vim.lsp.buf.implementation()<CR>")

    -- bufmap("n", "<C-M-l>", "<cmd>lua vim.lsp.buf.format({async = true})<CR>")
    bufmap("n", "<C-M-l>", "<leader>fm")
    bufmap("n", "<C-M-k>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    bufmap("n", "<C-M-n>", "<cmd>lua vim.lsp.buf.rename()<CR>")

    bufmap("n", "<C-M-g>", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
    bufmap("n", "<C-M-h>", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end)
    bufmap("n", "<C-M-j>", "<cmd>lua vim.lsp.buf.hover()<CR>")

    bufmap("n", "<C-M-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    bufmap("i", "<C-M-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    bufmap("s", "<C-M-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  end
})


autocmd({ "BufEnter", "QuitPre" }, {
  nested = false,
  callback = function(e)
    local nvim_tree = require("nvim-tree.api").tree

    if not nvim_tree.is_visible() then
      return
    end

    local winCount = 0
    for _, winId in ipairs(vim.api.nvim_list_wins()) do
      if vim.api.nvim_win_get_config(winId).focusable then
        winCount = winCount + 1
      end
    end

    if e.event == "QuitPre" and winCount == 2 then
      vim.api.nvim_cmd({ cmd = "qall" }, {})
    end

    if e.event == "BufEnter" and winCount == 1 then
      vim.defer_fn(function()
        nvim_tree.toggle({ find_file = true, focus = true })
        nvim_tree.toggle({ find_file = true, focus = false })
      end, 10)
    end
  end
})


autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
        line > 1
        and line <= vim.fn.line "$"
        and vim.bo.filetype ~= "commit"
        and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end
})


autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end
})
