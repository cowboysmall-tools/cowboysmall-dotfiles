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
        "clangd",
        "gopls",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "jsonls",
        "lombok-nightly",
        "lua-language-server",
        "openjdk-17",
        "prettier",
        "pyright",
        "rust-analyzer",
        "spring-boot-tools",
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

    dependencies = {
      "nvim-java/nvim-java"
    },

    config = function()
      require "configs.lspconfig"
    end
  },



  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },



  {
    "nvim-treesitter/nvim-treesitter",

    opts = {

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
