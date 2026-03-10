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

        -- Language Servers
        "clangd",
        "css-lsp",
        "gopls",
        "html-lsp",
        "jdtls",
        "json-lsp",
        "julia-lsp",
        "lua-language-server",
        "pyright",
        "rust-analyzer",
        "texlab",
        "vtsls",

        -- DAPs
        "java-debug-adapter",

        -- Test Runners
        "java-test",

        -- Formatters
        "black",
        "clang-format",
        "google-java-format",
        "isort",
        "prettier",
        "stylua"

      }
    }
  }

}
