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
    rust = { "rustfmt" }
  },

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  --   async = false
  -- }
}
