return {
  {
    "mason-org/mason.nvim",
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup({
        ui = {
          border = "rounded",
        }
      })
      mason_lspconfig.setup({
        automatic_installation = true,
      })
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  }
}
