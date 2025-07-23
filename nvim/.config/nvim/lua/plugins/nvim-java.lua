return {

  -- {
  --   "nvim-java/nvim-java",
  --   lazy = false,
  --   config = false,
  --   dependencies = {
  --     {
  --       "neovim/nvim-lspconfig",
  --       opts = {
  --         servers = {
  --           -- Your JDTLS configuration goes here
  --           jdtls = {
  --             -- settings = {
  --             --   java = {
  --             --     configuration = {
  --             --       runtimes = {
  --             --         {
  --             --           name = "JavaSE-23",
  --             --           path = "/usr/local/sdkman/candidates/java/23-tem",
  --             --         },
  --             --       },
  --             --     },
  --             --   },
  --             -- },
  --           },
  --         },
  --         setup = {
  --           jdtls = function()
  --             -- Your nvim-java configuration goes here
  --             require("java").setup({
  --               -- root_markers = {
  --               --   "settings.gradle",
  --               --   "settings.gradle.kts",
  --               --   "pom.xml",
  --               --   "build.gradle",
  --               --   "mvnw",
  --               --   "gradlew",
  --               --   "build.gradle",
  --               --   "build.gradle.kts",
  --               -- },
  --             })
  --             require("lspconfig").jdtls.setup({

  --             })
  --           end,
  --         },
  --       },
  --     },
  --   },
  -- }





  -- {
  --   "nvim-java/nvim-java",
  --   lazy = false,
  --   config = false,
  --   dependencies = {
  --     {
  --       "neovim/nvim-lspconfig",
  --       opts = {
  --         servers = {
  --           -- Your custom jdtls settings goes here
  --           jdtls = {
  --             settings = {
  --               java = {
  --                 configuration = {
  --                   runtimes = {
  --                     {
  --                       name = "JavaSE-21",
  --                       -- path = vim.fn.expand("~/.sdkman/candidates/java/current"),
  --                       path = "/home/jerry/.sdkman/candidates/java/current",
  --                     },
  --                   },
  --                 },
  --               },
  --             },
  --           },
  --         },
  --         setup = {
  --           jdtls = function()

  --             -- Your custom nvim-java configuration goes here
  --             require("java").setup({

  --               root_markers = {
  --                 "settings.gradle",
  --                 "settings.gradle.kts",
  --                 "pom.xml",
  --                 "build.gradle",
  --                 "mvnw",
  --                 "gradlew",
  --                 "build.gradle",
  --                 "build.gradle.kts",
  --               },

  --               -- jdtls = {
  --               --   version = 'v1.43.0',
  --               -- },
  --               spring_boot_tools = {
  --                 enable = true,
  --               },
  --               lombok = {
  --                 version = "nightly",
  --               },
  --               java_test = {
  --                 enable = true,
  --               },
  --               java_debug_adapter = {
  --                 enable = true,
  --               },
  --               jdk = {
  --                 auto_install = false,
  --               },
  --               notifications = {
  --                 dap = true,
  --               },

  --               -- We do multiple verifications to make sure things are in place to run this
  --               -- plugin
  --               verification = {
  --                 -- nvim-java checks for the order of execution of following
  --                 -- * require('java').setup()
  --                 -- * require('lspconfig').jdtls.setup()
  --                 -- IF they are not executed in the correct order, you will see a error
  --                 -- notification.
  --                 -- Set following to false to disable the notification if you know what you
  --                 -- are doing
  --                 invalid_order = true,

  --                 -- nvim-java checks if the require('java').setup() is called multiple
  --                 -- times.
  --                 -- IF there are multiple setup calls are executed, an error will be shown
  --                 -- Set following property value to false to disable the notification if
  --                 -- you know what you are doing
  --                 duplicate_setup_calls = true,

  --                 -- nvim-java checks if nvim-java/mason-registry is added correctly to
  --                 -- mason.nvim plugin.
  --                 -- IF it's not registered correctly, an error will be thrown and nvim-java
  --                 -- will stop setup
  --                 invalid_mason_registry = false,
  --               },

  --               mason = {
  --                 registries = {
  --                   "github:nvim-java/mason-registry",
  --                 },
  --               },

  --             })

  --             require("lspconfig").jdtls.setup({

  --               on_attach = require("nvchad.configs.lspconfig").on_attach,
  --               capabilities = require("nvchad.configs.lspconfig").capabilities,
  --               filetypes = { "java" },
  --             })

  --           end,
  --         },
  --       },
  --     },
  --   },
  -- }

}
