return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim",
    },

    config = function()
        -- NO IDEA WHAT FIDGET IS DOING BUT IT LOOKS COOL (THINK IT IS FOR LSP LOADING)
        require("fidget").setup({})

        -- MASON CONFIG
        require("mason").setup({
          ui = {
            border = "rounded",
          },
          registries = {
            "github:mason-org/mason-registry",
            "github:Crashdummyy/mason-registry"
          }
        })

        -- MASON LSP BRIDGE CONFIG
        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
              "lua_ls",
              "jsonls",
              "cssls",
              "html",
              "ts_ls"
            },
        })

        -- LSP CONFIGS
        vim.lsp.config.lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = {
                  "vim",
                },
              }
            }
          }
        }
    end
}
