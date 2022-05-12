-- Automatically install and set up packer.nvim on any machine this config is cloned to
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'Raimondi/delimitMate'
    use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-commentary'
    use 'terryma/vim-multiple-cursors'
    use 'akinsho/toggleterm.nvim'
    use 'goolord/alpha-nvim'
    use 'gelguy/wilder.nvim'
    use 'kshenoy/vim-signature'
    use 'tpope/vim-fugitive'
    use 'ellisonleao/gruvbox.nvim'

    use {
        'CRAG666/code_runner.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
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

end)

