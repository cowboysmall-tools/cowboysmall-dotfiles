require "nvchad.autocmds"


vim.api.nvim_create_autocmd("LspAttach", {

  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      vim.keymap.set(mode, rhs, lhs, {buffer = event.buf})
    end

    bufmap("n", "<C-M-t>", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
    bufmap("n", "<C-M-y>", "<cmd>lua vim.lsp.buf.definition()<cr>")
    bufmap("n", "<C-M-u>", "<cmd>lua vim.lsp.buf.declaration()<cr>")
    bufmap("n", "<C-M-i>", "<cmd>lua vim.lsp.buf.implementation()<cr>")
    bufmap("n", "<C-M-o>", "<cmd>lua vim.lsp.buf.references()<cr>")


    bufmap({"i", "s"}, "<C-M-s>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
    bufmap("n", "<C-M-d>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
    bufmap("n", "<C-M-j>", "<cmd>lua vim.lsp.buf.hover()<cr>")
    bufmap("n", "<C-M-k>", function()
        require("conform").format({async = true, lsp_format = "fallback"})
    end)
    bufmap("n", "<C-M-l>", "<cmd>lua vim.lsp.buf.code_action()<cr>")


    bufmap("n", "<C-M-n>", "<cmd>lua vim.lsp.buf.rename()<cr>")


    -- These keymaps are the defaults in Neovim v0.11
    -- bufmap("n", "<C-M-k>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
  end

})
