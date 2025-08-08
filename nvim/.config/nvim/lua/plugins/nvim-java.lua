return {

  -- "nvim-java/nvim-java",
  -- lazy = false,
  -- config = false,

  -- dependencies = {
  --   {
  --     "neovim/nvim-lspconfig",
  --     opts = {
  --       servers = {
  --         jdtls = {
  --           -- settings = {
  --           --   java = {
  --           --     configuration = {
  --           --       runtimes = {
  --           --         {
  --           --           name = "JavaSE-21",
  --           --           path = "/home/jerry/.sdkman/candidates/java/current",
  --           --         },
  --           --       },
  --           --     },
  --           --   },
  --           -- },
  --         },
  --       },
  --       setup = {
  --         jdtls = function()
  --           require("java").setup({

  --             -- root_markers = {
  --             --   "settings.gradle",
  --             --   "settings.gradle.kts",
  --             --   "pom.xml",
  --             --   "build.gradle",
  --             --   "mvnw",
  --             --   "gradlew",
  --             --   "build.gradle",
  --             --   "build.gradle.kts",
  --             --   ".git",
  --             -- },

  --             -- jdtls = {
  --             --   enable = true,
  --             --   version = "v1.48.0",
  --             -- },

  --             -- lombok = {
  --             --   enable = true,
  --             --   version = "nightly",
  --             -- },

  --             -- java_test = {
  --             --   enable = true,
  --             -- },

  --             -- java_debug_adapter = {
  --             --   enable = true,
  --             -- },

  --             -- spring_boot_tools = {
  --             --   enable = true,
  --             -- },

  --             -- jdk = {
  --             --   auto_install = false,
  --             -- },

  --             -- notifications = {
  --             --   dap = true,
  --             -- },

  --             -- verification = {
  --             --   invalid_order = true,
  --             --   duplicate_setup_calls = true,
  --             --   invalid_mason_registry = false,
  --             -- },

  --             -- mason = {
  --             --   registries = {
  --             --     "github:nvim-java/mason-registry",
  --             --   },
  --             -- },

  --           })

  --           require("lspconfig").jdtls.setup({})

  --         end,

  --       },
  --     },
  --   },
  -- },
}
