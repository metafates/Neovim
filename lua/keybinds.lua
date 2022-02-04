-- "jj" to exit insert mode
require("better_escape").setup {
    mapping = {"jj"},
    timeout = vim.o.timeoutlen,
    clear_empty_lines = false, 
    keys = "<Esc>", 
}

vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':wq<Enter>', { noremap = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>F', ':Telescope live_grep<Enter>', { noremap = true })

-- Hop
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})

-- coc
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

