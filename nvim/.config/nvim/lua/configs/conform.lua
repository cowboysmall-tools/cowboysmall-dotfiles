return {
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

  formatters = {
    ["google-java-format"] = {
      prepend_args = { "--aosp" }, -- Ensure 4-space indentation
    }
  }

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  --   async = false
  -- }
}
