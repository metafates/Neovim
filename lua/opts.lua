local opt = vim.opt

-- tab width stuff
local tabwidth = 4
opt.tabstop = tabwidth
opt.shiftwidth = tabwidth
opt.softtabstop = tabwidth
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- hybrid line numbers
opt.number = true
opt.relativenumber = true

-- search stuff
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard = "unnamedplus"

-- do not show startup screen
opt.shortmess:append("I")

-- hide tilda on empty buffer
opt.fillchars = { eob = " " }

-- no show mode
opt.showmode = false

-- set term gui colors
opt.termguicolors = true

-- indent line numbers for lsp errros
opt.signcolumn = "yes"

-- lazy load files
opt.lazyredraw = true

-- style lsp highlights
opt.cursorline = true
opt.cursorcolumn = true

-- use ripgrep
opt.grepprg = "rg --vimgrep --color=never --no-heading --smart-case --hidden --follow --glob '!{.git,node_modules}/*'"
opt.grepformat = "%f:%l:%c:%m"
