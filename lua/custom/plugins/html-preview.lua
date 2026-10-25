-- Space p o: open the current file in the Windows default browser
vim.keymap.set('n', '<leader>po', function()
  local winpath = vim.fn.system({ 'wslpath', '-w', vim.fn.expand '%:p' }):gsub('\n', '')
  vim.fn.jobstart({ 'explorer.exe', winpath }, { detach = true })
end, { desc = '[P]review: [O]pen in browser' })
