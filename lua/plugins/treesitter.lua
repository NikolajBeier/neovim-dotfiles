return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "vim", "javascript", "typescript", "html", "css", "json", "c_sharp" },
      highlight = {
        enable = true
      }
    })
  end
}
