return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'lifepillar/vim-gruvbox8'
    use 'Raimondi/delimitMate'
    use 'Yggdroot/LeaderF'
    use 'nvim-treesitter/nvim-treesitter'
    use 'karb94/neoscroll.nvim'
    use 'tpope/vim-commentary'
    use 'terryma/vim-multiple-cursors'
    use 'akinsho/toggleterm.nvim'
    use 'goolord/alpha-nvim'


    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
        config = function() require'nvim-tree'.setup {} end
    }


    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup{
                defaults = { file_ignore_patterns = {"node_modules"} }
            }
        end
    }

    use {
        'gelguy/wilder.nvim',
        config = function()
            vim.fn['wilder#setup']({
              modes = {':', '/', '?'},
              next_key = '<Tab>',
              previous_key = '<S-Tab>',
              accept_key = '<Down>',
              reject_key = '<Up>',
            })
        end
    }

    use {
        'neoclide/coc.nvim',
        branch = 'release',
    }


    use {
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }

    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    }
end)
