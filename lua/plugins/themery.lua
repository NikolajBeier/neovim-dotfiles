return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "tokyonight",
        "catppuccin",
        "visual_studio_code",
      },
      livePreview = true,
      transparent_background = true,
    })
  end
}
