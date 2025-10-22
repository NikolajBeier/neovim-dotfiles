vim.opt.nu = true                 -- set line numbers -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers

-- Tab size
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

--vim.opt.wrap = false

-- fold settings
vim.o.foldenable = true

-- keep folds open
vim.o.foldlevel = 999

--  folds are defined by a user-defined expression (tree-sitter)
vim.o.foldmethod = 'expr'

-- let tree-sitter define folds
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
