-- Shift+arrows select text, typing replaces it
vim.opt.keymodel = 'startsel,stopsel'
vim.opt.selectmode = 'key,mouse'

-- Delete removes the selection
vim.keymap.set('s', '<Del>', '<C-g>"_d', { desc = 'Delete selection' })

-- Ctrl+Z = undo (instead of suspending neovim)
vim.keymap.set('n', '<C-z>', 'u', { desc = 'Undo' })
vim.keymap.set('i', '<C-z>', '<C-o>u', { desc = 'Undo' })
vim.keymap.set('x', '<C-c>', '"+y', { desc = 'Copy selection' })
vim.keymap.set('s', '<C-c>', '<C-g>"+y', { desc = 'Copy selection' })
