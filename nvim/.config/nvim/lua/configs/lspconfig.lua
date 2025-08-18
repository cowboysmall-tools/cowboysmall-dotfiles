require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "gopls", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

require("lspconfig").jdtls.setup({

  -- Your custom nvim-java configuration goes here

  settings = {
    java = {

      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/home/jerry/.sdkman/candidates/java/current",
            default = true,
          },
        },
      },

      format = { enabled = false },

      -- format = {
      --   enabled = true,
      --   settings = {
      --     profile = "IntelliJ",
      --     url = "/home/jerry/.config/nvim/java-formatter-settings.xml",
      --   },
      -- },

      -- signatureHelp = { enabled = true },
      -- inlayHints = { parameterNames = { enabled = "all" } },
      -- inlayHints = { parameterNames = { enabled = "all" } },
    }
  }

})
