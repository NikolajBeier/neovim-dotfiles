local mapleader = " "
vim.g.mapleader = mapleader

vim.keymap.set('n', 'x', "<Cmd>:lua Snacks.picker.explorer()<CR>")

vim.keymap.set('n', '<leader>qs', function() require('persistence').load() end)

vim.keymap.set('n', '<leader>cc', function() require('CopilotChat').open() end)
vim.keymap.set('n', '<leader>cC', function() require('CopilotChat').close() end)

vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = 'Delete word backwards' })
vim.keymap.set("i", "<C-H>", "<C-w>", { desc = 'Delete word backward (Windows Terminal)' })
vim.keymap.set("c", "<C-BS>", "<C-w>")
