# 📝 Neovim config

My lua-based neovim config

![screenshot](./screenshots/1.png)

## Plugins

> Plugin manager - [Packer](https://github.com/wbthomason/packer.nvim)

-   [Gruvbox8](https://github.com/lifepillar/vim-gruvbox8) - lightweight gruvbox theme
-   [delimitMate](https://github.com/Raimondi/delimitMate) - automatic closing of quotes, parenthesis, brackets, etc
-   [LeaderF](https://github.com/Yggdroot/LeaderF) - An efficient fuzzy finder
-   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
-   [vim-commentary](https://github.com/tpope/vim-commentary) - Comment stuff out
-   [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Multiple cursors
-   [toggleterm](https://github.com/akinsho/toggleterm.nvim) - Terminal toggle
-   [alpha-nvim](https://github.com/goolord/alpha-nvim) - Startup screen
-   [nvim-cursorline](https://github.com/yamatsum/nvim-cursorline) - Highlight words
-   [code runner](https://github.com/CRAG666/code_runner.nvim) - The best code runner you could have
-   [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) - File explorer
-   [telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder over lists
-   [wilder](https://github.com/gelguy/wilder.nvim) - Enhanced wildmenu
-   [coc](https://github.com/neoclide/coc.nvim) - Autocompletion
-   [hop](https://github.com/phaazon/hop.nvim) - Easymotion
-   [lualine](https://github.com/nvim-lualine/lualine.nvim) - Status line
-   [better-escape](https://github.com/max397574/better-escape.nvim) - Escape insert mode quickly
-   [nvim-notify](https://github.com/rcarriga/nvim-notify) - A fancy, configurable, notification manager for NeoVim

## Install

> Neovim >= 0.5 is required.

! Note that this will replace your current config.

```bash
git clone https://github.com/metafates/Neovim.git ~/.config/nvim
```

Then open Neovim and run :PackerSync to install plugins.
Be sure to use one of the [nerdfonts](https://github.com/ryanoasis/nerd-fonts) to show icons properly

## Keybinds

> Leader key is ',' (ascii comma)

**Normal Mode**

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
`<C-n>` - spawn cursor on the same word

**Insert Mode**

`jj` - exit insert mode

**Visual Mode**

`gc` - comment out a selection
`<C-n>` - spawn cursors on each line of the selected text

## Commands

`:CRFiletype` - open config for [code runner plugin](https://github.com/CRAG666/code_runner.nvim)

## Files Structure

```bash
├── init.lua                    # load modules
└─ lua
    ├── colors                  # colors related stuff (theme)
    │   └── init.lua  
    ├── core                    # core modules
    │   ├── mappings.lua
    │   └── settings.lua
    ├── plugins
    │   ├── configs             # configs related to specific plugins
    │   │   ├── alpha.lua
    │   │   ├── lualine.lua
    │   │   └── toggleterm.lua
    │   └── init.lua            # plugins list
    └── utils                   # utils functions
        └── init.lua
```
