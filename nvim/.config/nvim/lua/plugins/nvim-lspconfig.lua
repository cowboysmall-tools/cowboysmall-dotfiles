return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      require('java').setup({

        -- Your custom jdtls settings goes here

        -- root_markers = {
        --   "settings.gradle",
        --   "settings.gradle.kts",
        --   "pom.xml",
        --   "build.gradle",
        --   "mvnw",
        --   "gradlew",
        --   "build.gradle",
        --   "build.gradle.kts",
        --   ".git",
        -- },

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
