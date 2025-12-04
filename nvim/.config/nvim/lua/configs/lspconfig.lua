require("nvchad.configs.lspconfig").defaults()


-- local servers = { "clangd", "cssls", "gopls", "html", "jsonls", "pyright", "texlab", "vtsls" }
local servers = { "clangd", "cssls", "gopls", "html", "jdtls", "jsonls", "pyright", "texlab", "vtsls" }
vim.lsp.enable(servers)


-- vim.lsp.enable("jdtls")
vim.lsp.config("jdtls", {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/home/jerry/.sdkman/candidates/java/current",
            default = true
          }
        }
      }
    }
  }
})


-- read :h vim.lsp.config for changing options of lsp servers
