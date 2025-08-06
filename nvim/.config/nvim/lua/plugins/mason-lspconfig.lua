return {

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "clangd", "gopls", "jdtls", "pyright", "rust-analyzer" },
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {}
      },
      "neovim/nvim-lspconfig",
    },
  }
}
