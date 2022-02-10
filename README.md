# 📝 Neovim config

My lua-based neovim config

![screenshot](./screenshots/1.png)

Plugin manager - [Packer](https://github.com/wbthomason/packer.nvim)

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
