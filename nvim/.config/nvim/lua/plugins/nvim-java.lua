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

        -- java_test = {
        --   enable = true,
        --   version = "0.43.1",
        -- }

        -- spring_boot_tools = {
        --   enable = true,
        --   version = "1.59.0",
        -- }
      })
    end
  }

}
