require "nvchad.autocmds"


local autocmd = vim.api.nvim_create_autocmd


autocmd("LspAttach", {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    -- bufmap("n", "<C-M-k>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")

    bufmap("n", "<C-M-t>", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
    bufmap("n", "<C-M-y>", "<cmd>lua vim.lsp.buf.definition()<cr>")
    bufmap("n", "<C-M-u>", "<cmd>lua vim.lsp.buf.declaration()<cr>")
    bufmap("n", "<C-M-i>", "<cmd>lua vim.lsp.buf.implementation()<cr>")
    bufmap("n", "<C-M-o>", "<cmd>lua vim.lsp.buf.references()<cr>")

    bufmap({"i", "s"}, "<C-M-s>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
    bufmap("n", "<C-M-d>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
    bufmap("n", "<C-M-j>", "<cmd>lua vim.lsp.buf.hover()<cr>")
    bufmap("n", "<C-M-k>", function() require("conform").format({async = true}) end)
    bufmap("n", "<C-M-l>", "<cmd>lua vim.lsp.buf.code_action()<cr>")

    bufmap("n", "<C-M-n>", "<cmd>lua vim.lsp.buf.rename()<cr>")
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
