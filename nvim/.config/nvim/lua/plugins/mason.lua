return {

  {
    "mason-org/mason.nvim",

    opts = {

      registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry",
      },

      ensure_installed = {
        "black",
        "clangd",
        "gopls",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "lombok-nightly",
        "lua-language-server",
        "openjdk-17",
        "prettier",
        "pyright",
        "rust-analyzer",
        "spring-boot-tools",
      },
    }
  }

}
