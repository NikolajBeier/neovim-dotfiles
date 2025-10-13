require("config.lazy")
require "opts"
require "keymaps"
require "launch"

vim.keymap.set('n', 'x', '<Cmd>Neotree<CR>')

vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })

vim.api.nvim_create_autocmd("VimEnter", {
	desc = "Open Neotree automatically",
	command = "Neotree"
})
