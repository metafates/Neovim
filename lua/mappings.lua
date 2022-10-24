local function bind(mode, key, action, ...)
  vim.api.nvim_set_keymap(mode, key, action, require("util").merge(...))
end

local silent = { silent = true }
local noremap = { noremap = true }
local expr = { expr = true }

-- save & exit with leader
bind('n', '<leader>w', ':w<CR>', noremap, silent)
bind('n', '<leader>q', ':q<CR>', noremap, silent)


-- jk to exit insert mode
bind('i', 'jk', '<ESC>', noremap)


-- completions with tab
bind('i', '<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], noremap, expr)
bind('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], noremap, expr)


-- run current file
bind('n', '<leader>r', ':RunCode<CR>', noremap, silent)


-- nohl on esc
bind('n', '<Esc>', ':nohl<CR>', noremap, silent)


-- vim native file explorer
bind('n', '<leader>m', ':Lexplore<CR>', noremap, silent)

-- telescope
bind('n', '<leader>ff', ':Telescope find_files<CR>', noremap, silent)
bind('n', '<leader>fg', ':Telescope live_grep<CR>', noremap, silent)
bind('n', '<leader>fb', ':Telescope buffers<CR>', noremap, silent)
bind('n', '<leader>fh', ':Telescope help_tags<CR>', noremap, silent)

-- invert with control i
bind('n', '<C-i>', ":lua require('nvim-toggler').toggle()<CR>", noremap, silent)

-- leader y to copy whole buffer
bind('n', '<leader>y', ':%y+<CR>', noremap, silent)
