require("config.lazy")
require "opts"
require "keymaps"

vim.keymap.set('n', 'x', "<Cmd>:lua Snacks.picker.explorer()<CR>")
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("c", "<C-BS>", "<C-w>")


vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Open Explorer automatically (unless Dashboard is opened)",
  callback = function()
    -- Tjek om nvim blev kaldt med dashboard i cmd-line argumenterne
    for _, arg in ipairs(vim.v.argv) do
      if arg:match("Snacks%.dashboard%.open") then
        return  -- stop, vi åbner ikke explorer
      end
    end

    -- Hvis ikke, så åbn Explorer
    Snacks.picker.explorer()
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Enable indent guides",
  command = ":lua Snacks.indent.enable()"
})
