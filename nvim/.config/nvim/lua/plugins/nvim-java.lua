return {

  {
    "nvim-java/nvim-java",

    config = function()
      require("java").setup({

        root_markers = {
          "mvnw",
          "gradlew",
          ".git"
        }
      })
    end
  }

}
