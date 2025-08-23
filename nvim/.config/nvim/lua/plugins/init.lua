return {

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require("configs.conform")
  },



  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end
  },



  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },



  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css",
        "c", "cpp", "dart", "go", "java", "latex", "markdown",
        "python", "r", "rnoweb", "rust", "toml", "yaml", "zig"
      }
    }
  },



  {
    "mason-org/mason.nvim",
    opts = {

      registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry"
      },

      ensure_installed = {
        "black",
        "clangd",
        "gopls",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "lombok-nightly",
        "lua-language-server",
        "openjdk-17",
        "prettier",
        "pyright",
        "rust-analyzer",
        "spring-boot-tools"
      }
    }
  },


  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 50
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
