
vim.api.nvim_exec([[ autocmd BufWritePost * lua require('notify')('   Saved ') ]], false)
-- vim.api.nvim_exec([[ autocmd FileType alpha set laststatus=0 ]], false)

-- Hide status line in menus
vim.api.nvim_exec([[
    let blacklist = ['alpha', 'NvimTree', 'TelescopePrompt', 'TelescopeResults']
    
    function! s:HideStatus()
        if &ft == 'NvimTree' | return | endif
        set laststatus=0
        set noruler
    endfunction

    function! s:ShowStatus()
        set laststatus=2
        set ruler
    endfunction
    
    autocmd FileType * if index(blacklist, &ft) < 0 | call s:ShowStatus() | else | call s:HideStatus() | endif
]], true)

