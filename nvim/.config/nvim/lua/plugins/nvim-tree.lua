return {

  {
    "nvim-tree/nvim-tree.lua",

    opts = {

      view = { width = 50 },

      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end


        -- default mappings
        api.config.mappings.default_on_attach(bufnr)


        -- custom mappings - Meta / Alt is the main modifier for nvim-tree
        local map = vim.keymap.set

        map("n", "<M-n>", api.fs.create, opts("Create File Or Directory"))

        map("n", "c", function()
          api.fs.clear_clipboard()
          api.fs.copy.node()
        end, opts("Copy File"))

        map("n", "x", function()
          api.fs.clear_clipboard()
          api.fs.cut()
        end, opts("Cut File"))

        map("n", "<M-c>", function()
          local file_src = api.tree.get_node_under_cursor()["absolute_path"]
          local input_opts = { prompt = "Copy to ", default = file_src, completion = "file" }

          vim.ui.input(input_opts, function(file_out)
            local dir = vim.fn.fnamemodify(file_out, ":h")

            vim.fn.system { "mkdir", "-p", dir }
            vim.fn.system { "cp", "-R", file_src, file_out }
          end)
        end, opts("Copy File To"))

        map("n", "<M-x>", function()
          local file_src = api.tree.get_node_under_cursor()["absolute_path"]
          local input_opts = { prompt = "Move to ", default = file_src, completion = "file" }

          vim.ui.input(input_opts, function(file_out)
            local dir = vim.fn.fnamemodify(file_out, ":h")

            vim.fn.system { "mkdir", "-p", dir }
            vim.fn.system { "mv", file_src, file_out }
          end)
        end, opts("Move File To"))
      end
    }
  }

}
