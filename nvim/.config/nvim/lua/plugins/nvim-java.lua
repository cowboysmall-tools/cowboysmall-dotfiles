return {

  "nvim-java/nvim-java",
}


-- return {

--   "nvim-java/nvim-java",
--   -- config = false,

--   dependencies = {
--     {
--       "neovim/nvim-lspconfig",
--       opts = {
--         servers = {
--           jdtls = {
--             -- I previously added config
--             -- for the version of the
--             -- current jdk installed and
--             -- configured through sdkman
--           },
--         },
--         setup = {
--           jdtls = function()

--             require("java").setup({
--               -- I previously added config
--               -- for lombok here, explicitly
--               -- specifying the version, etc.
--             })

--           end,
--         },
--       },
--     },
--   },
-- }


