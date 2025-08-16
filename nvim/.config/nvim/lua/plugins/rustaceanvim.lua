return {

  {
    "mrcjkb/rustaceanvim",
    lazy = false, -- This plugin is already lazy
    version = "^6", -- Recommended

    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
    -- config = function()
    -- end
  }

}
