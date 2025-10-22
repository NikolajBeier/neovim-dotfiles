local skip_filetypes = {
['copilot-chat'] = true,
['snacks_picker'] = true,
}

local function should_skip(bufnr)
  bufnr = bufnr or 0
  local ft = vim.api.nvim_get_option_value('filetype', { buf = bufnr })
  local name = vim.api.nvim_buf_get_name(bufnr)

  if skip_filetypes[ft] then return true end
  -- Ekstra navn-match for CopilotChat (nogle gange hjælper det)
  if name and name:match('CopilotChat') or name:match('snacks://explorer') then return true end

  return false
end



vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    if should_skip(0) then
      return
    end
    vim.opt.relativenumber = false
  end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    if should_skip(0) then
      return
    end
    vim.opt.relativenumber = true
  end,
})

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


vim.api.nvim_create_autocmd('BufEnter', {
  pattern = 'copilot-*',
  callback = function()
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
    vim.opt_local.conceallevel = 0
    vim.cmd('wincmd L')
  end,
})
