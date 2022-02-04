return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    use 'lifepillar/vim-gruvbox8'
    use 'Raimondi/delimitMate'
    use 'Yggdroot/LeaderF'
    use 'nvim-treesitter/nvim-treesitter'
    use 'karb94/neoscroll.nvim'
    use 'tpope/vim-commentary'
    

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
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

        
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
          require('lualine').setup { options = { theme = 'gruvbox' } }
        end,
    }

    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    }

    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    

end)
