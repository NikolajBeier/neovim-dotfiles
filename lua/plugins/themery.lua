return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "tokyonight",
        "catppuccin",
      },
      livePreview = true,
      transparent_background = true,
    })
  end
}
