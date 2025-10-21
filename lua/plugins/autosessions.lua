return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    suppressed_dirs = { "C:\\Projects" }
  },
  config = function()
    require("auto-session").setup({})
  end
}
