vim.pack.add { 'https://github.com/hat0uma/csvview.nvim' }
require('csvview').setup {}

-- Turn the table view on automatically for .csv and .tsv files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'csv', 'tsv' },
  callback = function() vim.cmd 'CsvViewEnable' end,
})
