return {

  {
    "neovim/nvim-lspconfig",

    config = function()
      require("java").setup({
        -- Your custom jdtls settings goes here
        root_markers = { "mvnw", "gradlew", ".git" }
      })

      require("configs.lspconfig")
    end
  }

}
