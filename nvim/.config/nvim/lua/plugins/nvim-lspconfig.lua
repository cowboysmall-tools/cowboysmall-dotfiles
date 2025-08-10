return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      require('java').setup({

        -- Your custom jdtls settings goes here
        root_markers = {".git" },
      })

      require "configs.lspconfig"

    end,
  },
}
