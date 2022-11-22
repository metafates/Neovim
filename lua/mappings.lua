-- vim:fileencoding=utf-8:foldmethod=marker

-- Functions {{{
local function __bind(mode, key, action, ...)
    vim.api.nvim_set_keymap(mode, key, action, require("util").merge(...))
end

local function normal(key, action, ...)
    __bind("n", key, action, ...)
end

local function visual(key, action, ...)
    __bind("v", key, action, ...)
end

local function insert(key, action, ...)
    __bind("i", key, action, ...)
end

local silent = { silent = true }
local noremap = { noremap = true }
local expr = { expr = true }

-- }}}

-- save & exit with leader
normal('<leader>w', ':w<CR>', noremap, silent)
normal('<leader>q', ':q<CR>', noremap, silent)


-- jk to exit insert mode
insert('jk', '<ESC>', noremap)


-- completions with tab
insert('<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], noremap, expr)
insert('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], noremap, expr)


-- run current file
normal('<leader>r', ':RunCode<CR>', noremap, silent)


-- nohl on esc
normal('<Esc>', ':nohl<CR>', noremap, silent)


-- vim native file explorer
normal('<leader>m', ':Carbon<CR>', noremap, silent)

-- telescope
normal('<leader>ff', ':Telescope find_files<CR>', noremap, silent)
normal('<leader>fg', ':Telescope live_grep<CR>', noremap, silent)
normal('<leader>fb', ':Telescope buffers<CR>', noremap, silent)
normal('<leader>fh', ':Telescope help_tags<CR>', noremap, silent)

-- invert with control i
normal('<C-i>', ":lua require('nvim-toggler').toggle()<CR>", noremap, silent)

-- leader y to copy whole buffer
normal('<leader>y', ':%y+<CR>', noremap, silent)
