return {

  {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig"
    },

    automatic_enable = false,

    opts = {

      ensure_installed = {
        "black",
        "clang-format",
        "clangd",
        "css-lsp",
        "google-java-format",
        "gopls",
        "html-lsp",
        "isort",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "pyright",
        "rust-analyzer",
        "stylua",
        "texlab",
        "vtsls"
      }
    }
  }

}
