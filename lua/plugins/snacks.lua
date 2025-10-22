return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    dashboard = {
      enabled = true,
    },
    indent = {
      enabled = true,
      priority = 1,
      char = "|",
      only_scope = false,
      only_current = false,
      hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
    },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  }
}
