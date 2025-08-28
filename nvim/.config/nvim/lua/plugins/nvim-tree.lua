return {

  {
    "nvim-tree/nvim-tree.lua",

    opts = {

      view = {
        width = 50
      },

      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end


        local function clear_and_copy()
          api.fs.clear_clipboard()
          api.fs.copy.node()
        end

        local function clear_and_cut()
          api.fs.clear_clipboard()
          api.fs.cut()
        end



        local function copy_file_to()
          local file_src = api.tree.get_node_under_cursor()["absolute_path"]
          local input_opts = { prompt = "Copy to ", default = file_src, completion = "file" }

          vim.ui.input(input_opts, function(file_out)
            local dir = vim.fn.fnamemodify(file_out, ":h")

            vim.fn.system { "mkdir", "-p", dir }
            vim.fn.system { "cp", "-R", file_src, file_out }
          end)
        end

        local function move_file_to()
          local file_src = api.tree.get_node_under_cursor()["absolute_path"]
          local input_opts = { prompt = "Move to ", default = file_src, completion = "file" }

          vim.ui.input(input_opts, function(file_out)
            local dir = vim.fn.fnamemodify(file_out, ":h")

            vim.fn.system { "mkdir", "-p", dir }
            vim.fn.system { "mv", file_src, file_out }
          end)
        end


        -- custom mappings
        local map = vim.keymap.set

        map("n", "c", clear_and_copy, opts("copy file"))
        map("n", "x", clear_and_cut, opts("cut file"))
        map("n", "<M-c>", copy_file_to, opts("copy file to"))
        map("n", "<M-x>", move_file_to, opts("move file to"))
      end
    }
  }

}
