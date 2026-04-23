return {

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform"
  },


  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end
  },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },


  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
        disable = { "latex", },
      },
      ensure_installed = {
        "c",
        "comment",
        "cpp",
        "css",
        "dart",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "html",
        "java",
        "javascript",
        "json",
        "julia",
        "latex",
        "lua",
        "markdown",
        "python",
        "r",
        "rnoweb",
        "rust",
        "sql",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "zig"
      }
    }
  }

}
