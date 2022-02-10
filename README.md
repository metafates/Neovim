# 📝 Neovim config

My lua-based neovim config

![screenshot](./screenshots/1.png)

## Plugins

Plugin manager - [Packer](https://github.com/wbthomason/packer.nvim)

    - [Gruvbox8](https://github.com/lifepillar/vim-gruvbox8) - lightweight gruvbox theme
    - [delimitMate](https://github.com/Raimondi/delimitMate) - automatic closing of quotes, parenthesis, brackets, etc
    - [LeaderF](https://github.com/Yggdroot/LeaderF) - An efficient fuzzy finder
    - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
    - [vim-commentary](https://github.com/tpope/vim-commentary) - Comment stuff out
    - [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Multiple cursors
    - [toggleterm](https://github.com/akinsho/toggleterm.nvim) - Terminal toggle
    - [alpha-nvim](https://github.com/goolord/alpha-nvim) - Startup screen
    - [nvim-cursorline](https://github.com/yamatsum/nvim-cursorline) - Highlight words
    - [code runner](https://github.com/CRAG666/code_runner.nvim) - The best code runner you could have
    - [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) - File explorer
    - [telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder over lists
    - [wilder](https://github.com/gelguy/wilder.nvim) - Enhanced wildmenu
    - [coc](https://github.com/neoclide/coc.nvim) - Autocompletion
    - [hop](https://github.com/phaazon/hop.nvim) - Easymotion
    - [lualine](https://github.com/nvim-lualine/lualine.nvim) - Status line
    - [better-escape](https://github.com/max397574/better-escape.nvim) - Escape insert mode quickly
    
## Keybinds

> Leader key is ',' (ascii comma)

__Normal Mode__

`<Leader>r` - run the current file using [this plugin](https://github.com/CRAG666/code_runner.nvim)\
`<Leader>f` - project fuzzy search\
`<Leader>F` - telescope grep search\
`<Leader>t` - toggle terminal\
`<Leader>w` - save (:w)\
`<Leader>q` - quit (:q)\
`<Leader>m` - toggle file tree\
`f` - easymotion forwards\
`F` - easymotion backwards\
`gcc` - comment out a line\
`<C-n>` - spawn cursor on the same word\

__Insert Mode__

`jj` - exit insert mode

__Visual Mode__

`gc` - comment out a selection
`<C-n>` - spawn cursors on each line of the selected text

## Commands

`:CRFiletype` - open config for [code runner plugin](https://github.com/CRAG666/code_runner.nvim)
