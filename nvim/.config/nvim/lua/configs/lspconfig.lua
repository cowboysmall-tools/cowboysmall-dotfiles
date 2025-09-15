require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "cssls", "gopls", "html", "jsonls", "pyright", "texlab", "vtsls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

-- require("lspconfig").clangd.setup({})
-- require("lspconfig").cssls.setup({})
-- require("lspconfig").gopls.setup({})
-- require("lspconfig").html.setup({})
-- require("lspconfig").jsonls.setup({})
-- require("lspconfig").pyright.setup({})
-- require("lspconfig").texlab.setup({})
-- require("lspconfig").vtsls.setup({})

require("lspconfig").jdtls.setup({

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
