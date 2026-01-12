return {

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save

    opts = require "configs.conform"
  },



  {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig"
    },

    automatic_enable = false,

    opts = {

      ensure_installed = {
        "black",
        "clang-format",
        "clangd",
        "css-lsp",
        "google-java-format",
        "gopls",
        "html-lsp",
        "isort",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "pyright",
        "rust-analyzer",
        "stylua",
        "texlab",
        "vtsls"
      }
    }
  },



  {
    "mason-org/mason.nvim",

    opts = {

      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },



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
        "cpp",
        "css",
        "dart",
        "go",
        "html",
        "java",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "python",
        "r",
        "rnoweb",
        "rust",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "zig"
      }
    }
  },



  {
    "nvim-telescope/telescope.nvim",

    opts = {

      defaults = {
        file_ignore_patterns = {
          "__pycache__"
        }
      }
    }
  },



  {
    "hrsh7th/nvim-cmp",

    config = function(_, opts)
      local cmp = require("cmp")

      local mymappings = {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        })
      }

      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, mymappings)
      cmp.setup(opts)
    end
  }

}
