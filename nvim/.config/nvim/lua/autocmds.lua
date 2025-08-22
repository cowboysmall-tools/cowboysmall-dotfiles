require "nvchad.autocmds"


vim.api.nvim_create_autocmd("LspAttach", {

  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    bufmap("n", "<C-M-u>", "<cmd>lua vim.lsp.buf.references()<cr>")
    bufmap("n", "<C-M-i>", "<cmd>lua vim.lsp.buf.declaration()<cr>")
    bufmap("n", "<C-M-o>", "<cmd>lua vim.lsp.buf.definition()<cr>")

    -- bufmap("n", "<C-M-k>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
    bufmap("n", "<C-M-k>", "<cmd>lua require('conform').format({async = true, lsp_format = 'fallback'})<cr>")
    bufmap("n", "<C-M-l>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    bufmap("n", "<C-M-n>", "<cmd>lua vim.lsp.buf.rename()<cr>")

    -- These keymaps are the defaults in Neovim v0.11
    -- bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
    -- bufmap("n", "gri", "<cmd>lua vim.lsp.buf.implementation()<cr>")
    -- bufmap("n", "gO", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
    -- bufmap({"i", "s"}, "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

    -- These are custom keymaps
    -- bufmap("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
  end

})
