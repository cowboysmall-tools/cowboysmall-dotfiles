return {

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = {

      formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        java = { "google-java-format" }
      },

      default_format_opts = {
        lsp_format = "fallback",
      },

      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
      },

      formatters = {
        ["google-java-format"] = {
          prepend_args = { "--aosp" }, -- Ensure 4-space indentation
        }
      }

    }
  },



  {
    "neovim/nvim-lspconfig",
    config = function()

      require("java").setup({
        root_markers = { "mvnw", "gradlew", ".git" }
      })

      require("nvchad.configs.lspconfig").defaults()

      local servers = { "html", "cssls", "clangd", "gopls", "pyright" }
      vim.lsp.enable(servers)

      require("lspconfig").jdtls.setup({
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "JavaSE-21",
                  path = "/home/jerry/.sdkman/candidates/java/current",
                  default = true,
                }
              }
            }
          }
        }
      })

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
