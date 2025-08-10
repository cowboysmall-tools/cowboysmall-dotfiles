return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      require('java').setup({

        -- Your custom jdtls settings goes here
        root_markers = { ".git" },

        -- this approach does not seem to work
        -- root_dir = vim.loop.cwd(),
        -- root_dir = vim.fn.getcwd(),
      })

      require "configs.lspconfig"

    end,
  },
}
