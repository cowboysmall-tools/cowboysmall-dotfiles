return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      require('java').setup({

        -- Your custom jdtls settings goes here

        root_markers = {
          -- "build.gradle",
          -- "build.gradle.kts",
          -- "gradlew",
          -- "pom.xml",
          -- "settings.gradle",
          -- "settings.gradle.kts",
          "mvnw",
          ".git",
        },

        -- jdtls = {
        --   enable = false,
        -- },

        -- lombok = {
        --   version = "nightly",
        -- },

        -- java_test = {
        --   enable = false,
        -- },

        -- java_debug_adapter = {
        --   enable = false,
        -- },

        -- spring_boot_tools = {
        --   enable = false,
        -- },

        -- jdk = {
        --   auto_install = false,
        -- },
      })

      require "configs.lspconfig"

    end,
  },
}
