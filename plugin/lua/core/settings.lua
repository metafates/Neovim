local set = vim.opt
set.mouse = 'a'
set.termguicolors = true
set.number = true
set.relativenumber = true
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.clipboard = 'unnamedplus'
set.autoindent = true
set.updatetime = 200
set.hidden = true
set.scrolloff = 8

vim.api.nvim_command('set nobackup')
vim.api.nvim_command('set noshowmode')
vim.api.nvim_command('set nrformats+=alpha')

vim.o.signcolumn = "yes"

-- Leader F popup window
vim.g.Lf_WindowPosition = 'popup'
vim.g.Lf_PreviewInPopup = 1
