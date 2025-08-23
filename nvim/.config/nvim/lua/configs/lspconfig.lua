
require("java").setup({
  -- Your custom jdtls settings goes here
  root_markers = { "mvnw", "gradlew", ".git" }
})




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
          }
        }
      }

      -- The file is read, but the contents seem to be ignored...
      -- format = {
      --   enabled = true,
      --   settings = {
      --     profile = "IntelliJ",
      --     url = "/home/jerry/.config/nvim/formatter-settings.xml",
      --   },
      -- },

      -- inlay_hint = {
      --   enabled = false
      -- }
    }
  }

})
