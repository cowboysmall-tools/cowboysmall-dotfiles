return {

  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry",
      },
      -- ensure_installed = {
      --   "clangd",
      --   "gopls",
      --   "jdtls",
      --   "pyright",
      --   "rust-analyzer",
      -- },
    }
  }
}
