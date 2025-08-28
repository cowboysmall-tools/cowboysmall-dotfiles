return {

  {
    "adibhanna/nvim-newfile.nvim",

    dependencies = {
      "MunifTanjim/nui.nvim"
    },

    config = function()
      require("nvim-newfile").setup({

        -- Optional configuration
        languages = {
          rust = {
            enabled = true,
            package_format = "// Module: %s",
            use_directory_name = true,
            file_extensions = { "rs" }
          },
          python = {
            enabled = true,
            package_format = '"""Package: %s"""',
            use_directory_name = false,
            file_extensions = { "py" }
          }
        },

        project_root_patterns = {
          "mvnw",
          "gradlew",
          "Cargo.toml",
          "Makefile",
          "go.mod",
          ".git"
        }
      })
    end
  }

}
