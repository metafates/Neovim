vim.api.nvim_exec([[ autocmd BufWritePost * lua require('notify')('   Saved ') ]], false)
