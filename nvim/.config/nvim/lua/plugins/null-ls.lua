return {

  -- Null-ls for Black, Ruff, MyPy
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.black,   -- Black
          null_ls.builtins.diagnostics.ruff,   -- Ruff
          null_ls.builtins.diagnostics.mypy,   -- MyPy
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
