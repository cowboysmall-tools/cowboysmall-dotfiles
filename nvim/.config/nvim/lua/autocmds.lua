require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, { buffer = event.buf })
    end

    local conform_format = function() require("conform").format({ async = true }) end

    bufmap("n", "<C-M-r>", "<cmd>lua vim.lsp.buf.references()<CR>")
    bufmap("n", "<C-M-t>", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
    bufmap("n", "<C-M-y>", "<cmd>lua vim.lsp.buf.definition()<CR>")
    bufmap("n", "<C-M-u>", "<cmd>lua vim.lsp.buf.declaration()<CR>")
    bufmap("n", "<C-M-i>", "<cmd>lua vim.lsp.buf.implementation()<CR>")
    bufmap("n", "<C-M-g>", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
    bufmap("n", "<C-M-h>", "<cmd>lua vim.lsp.buf.hover()<CR>")
    -- bufmap("n", "<C-M-k>", "<cmd>lua vim.lsp.buf.format({async = true})<CR>")
    bufmap("n", "<C-M-k>", conform_format)
    bufmap("n", "<C-M-l>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    bufmap("n", "<C-M-j>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    bufmap("i", "<C-M-j>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    bufmap("s", "<C-M-j>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    bufmap("n", "<C-M-n>", "<cmd>lua vim.lsp.buf.rename()<CR>")
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
