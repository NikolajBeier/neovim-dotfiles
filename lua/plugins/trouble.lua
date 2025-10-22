return {
  "folke/trouble.nvim",
  opts = {
    auto_refresh = true,
    modes = {
      diagnostics = {
        sort = { 'filename', 'severity', 'pos' },
        auto_open = true,
        auto_close = true,
        focus = false,

        filter = function(items)
          local current_buf = vim.api.nvim_get_current_buf()
          local current_name = vim.api.nvim_buf_get_name(current_buf)

          table.sort(items, function(a, b)
            if a.filename == current_name and b.filename ~= current_name then
              return true
            elseif a.filename ~= current_name and b.filename == current_name then
              return false
            else
              return false
            end
            return a.severity < b.severity
          end)
          return items
        end
      }
    },
    auto = {
      open = true,
      close = true,
      refresh = true
    }
  },
  event = "VeryLazy",
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  }
}
