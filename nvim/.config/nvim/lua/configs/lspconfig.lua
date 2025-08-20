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

      -- The formatting file is read, but the contents are ignored...

      -- format = {
      --   enabled = true,
      --   settings = {
      --     profile = "IntelliJ",
      --     url = "/home/jerry/.config/nvim/java-formatter-settings.xml",
      --   },
      -- },

      format = {
        enabled = false
      },

      signatureHelp = {
        enabled = false
      },

      inlayHints = {
        enabled = false
      }

    }
  }

})
