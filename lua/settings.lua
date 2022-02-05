local set = vim.opt
set.number = true
set.relativenumber = true
set.cc = '80'
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.clipboard = 'unnamedplus'
set.autoindent = true
set.updatetime = 200
set.hidden = true
vim.api.nvim_command('set nobackup')
vim.api.nvim_command('set nobackup')
set.signcolumn = 'number'


-- Set noshowmode (set.noshowmode = true doesn't work)
vim.api.nvim_command('set noshowmode')


-- Leader F popup window
vim.g.Lf_WindowPosition = 'popup'
vim.g.Lf_PreviewInPopup = 1
