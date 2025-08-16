return {

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "mfussenegger/nvim-dap",
  },


  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim",
        "lua",
        "vimdoc",
        "html",
        "css",

        "c",
        "cpp",
        "dart",
        "go",
        "java",
        "latex",
        "markdown",
        "python",
        "r",
        "rnoweb",
        "rust",
        "toml",
        "yaml",
        "zig"
  		},
  	},
  }

}
