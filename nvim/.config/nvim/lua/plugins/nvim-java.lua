return {

  {
    "nvim-java/nvim-java",

    config = function()

      require("java").setup({
        root_markers = {
          "mvnw",
          "gradlew",
          ".git"
        }
      })

      -- vim.lsp.enable("jdtls")
      -- vim.lsp.config("jdtls", {
      --   settings = {
      --     java = {
      --       configuration = {
      --         runtimes = {
      --           {
      --             name = "JavaSE-21",
      --             path = "/home/jerry/.sdkman/candidates/java/current",
      --             default = true
      --           }
      --         }
      --       }
      --     }
      --   }
      -- })

    end
  }
}
