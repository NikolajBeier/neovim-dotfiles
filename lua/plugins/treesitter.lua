return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enabled = true },
      indent = { enabled = true },
      ensure_installed = { "lua", "javascript", "typescript", "html", "css", "json", "tsx" },
    })
  end,
}
