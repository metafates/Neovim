-- "jj" to exit insert mode
require("better_escape").setup {
    mapping = {"jj"},
    timeout = vim.o.timeoutlen,
    clear_empty_lines = false, 
    keys = "<Esc>", 
}

vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<Enter>', { noremap = true })

-- Hop
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
