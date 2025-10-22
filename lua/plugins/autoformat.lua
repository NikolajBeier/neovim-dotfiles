return {}
--[[
-- AUTOFORMAT ON SAVE CONFIG
return {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        require('null-ls').setup({
          on_attach = function(client, bufnr)
            print(client.name, client.supports_method("textDocument/formatting"))
            if client.supports_method("textDocument/formatting") then
              vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
              vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ bufnr = bufnr })
                end,
              })
            end
          end
        })
      end
} 
--]]
