return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      require('java').setup({

        -- Your custom jdtls settings goes here

        root_markers = {
          ".git",
          -- "mvnw",
          -- "pom.xml",
          -- "gradlew",
          -- "settings.gradle",
          -- "settings.gradle.kts",
          -- "build.gradle",
          -- "build.gradle.kts",
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
