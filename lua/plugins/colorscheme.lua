function SetColor(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        transparent = true,
        terminal_colors = true,
        styles = {
          sidebars = "dark",
          floats = "dark",
        },
      })

      vim.cmd("colorscheme tokyonight")

      SetColor()
    end
  },
}
