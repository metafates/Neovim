vim.api.nvim_exec([[ autocmd BufWritePost * lua require('notify')('   Saved ') ]], false)

-- Hide status line in menus
vim.cmd[[
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
]]

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]
