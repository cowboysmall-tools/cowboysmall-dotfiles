return {

  "nvim-java/nvim-java",
  -- lazy = false,
  config = false,

  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            -- I previously added config
            -- for the version of the
            -- current jdk installed and
            -- configured through sdkman
          },
        },
        setup = {
          jdtls = function()

            require("java").setup({
              -- I previously added config
              -- for lombok here, explicitly
              -- specifying the version, etc.
            })

            -- require("lspconfig").jdtls.setup({})

          end,
        },
      },
    },
  },
}





-- return {

--   "nvim-java/nvim-java",
--   -- lazy = false,
--   config = false,

--   dependencies = {
--     {
--       "neovim/nvim-lspconfig",
--       opts = {
--         servers = {
--           jdtls = {
--             settings = {
--               java = {
--                 configuration = {
--                   runtimes = {
--                     {
--                       name = "JavaSE-21",
--                       path = "/home/jerry/.sdkman/candidates/java/current",
--                       default = true,
--                     },
--                   },
--                 },
--               },
--             },
--           },
--         },
--         setup = {
--           jdtls = function()
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
--               --   ".git",
--               -- },

--               -- jdtls = {
--               --   enable = true,
--               --   version = "v1.48.0",
--               -- },

--               -- lombok = {
--               --   enable = true,
--               --   version = "nightly",
--               -- },

--               -- java_test = {
--               --   enable = true,
--               -- },

--               -- java_debug_adapter = {
--               --   enable = true,
--               -- },

--               -- spring_boot_tools = {
--               --   enable = true,
--               -- },

--               -- jdk = {
--               --   auto_install = false,
--               -- },

--               -- notifications = {
--               --   dap = true,
--               -- },

--               -- verification = {
--               --   invalid_order = true,
--               --   duplicate_setup_calls = true,
--               --   invalid_mason_registry = false,
--               -- },

--               -- mason = {
--               --   registries = {
--               --     "github:nvim-java/mason-registry",
--               --   },
--               -- },

--             })

--             require("lspconfig").jdtls.setup({
--               settings = {
--                 java = {
--                   configuration = {
--                     runtimes = {
--                       {
--                         name = "JavaSE-21",
--                         path = "/home/jerry/.sdkman/candidates/java/current",
--                         default = true,
--                       },
--                     },
--                   },
--                 },
--               },
--             })

--           end,

--         },
--       },
--     },
--   },

-- }

