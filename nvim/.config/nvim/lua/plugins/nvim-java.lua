return {

  {
    "nvim-java/nvim-java",
    lazy = false,

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
