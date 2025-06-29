-- return {
--
--   "nvim-java/nvim-java",
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
--                       path = vim.fn.expand("~/.sdkman/candidates/java/current"),
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
--               jdk = {
--                 auto_install = false,
--               },
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
--             })
--           end,
--         },
--       },
--     },
--   },
-- }






-- return {
--
--   {
--     "nvim-java/nvim-java"
--   }
-- }





-- return {
--
--   "nvim-java/nvim-java",
--   dependencies = {
--     {
--       "neovim/nvim-lspconfig",
--       opts = {
--         servers = {
--           jdtls = {
--             -- Your custom jdtls settings goes here
--           },
--         },
--         setup = {
--           jdtls = function()
--             require("java").setup({
--               -- Your custom nvim-java configuration goes here
--             })
--           end,
--         },
--       },
--     },
--   },
-- }
