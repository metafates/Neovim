local fn = vim.fn

-- install packer if not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    local packer_repo = "https://github.com/wbthomason/packer.nvim.git"
    fn.system({ "git", "clone", packer_repo, install_path })
end

local plugins = {
    { "wbthomason/packer.nvim" },
    { "github/copilot.vim" },
    { "neovim/nvim-lspconfig" },
    { "lukas-reineke/lsp-format.nvim" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").add_default_mappings()
        end
    },
    {
        "nguyenvukhang/nvim-toggler",
        config = function()
            require("nvim-toggler").setup {}
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                highlight = {
                    enable = true
                },
                indent = {
                    enable = true
                }
            }
        end
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require("lualine").setup {
                options = {
                    theme = 'pywal-nvim',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                }
            }
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    },
    {
        "AlphaTechnolog/pywal.nvim",
        as = "pywal",
        config = function()
            require("pywal").setup()
        end
    },
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.comment").setup()
            require("mini.completion").setup()
            require("mini.pairs").setup()
        end
    },
    {
        "CRAG666/code_runner.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("code_runner").setup {
                filetype = {
                    python = "python3 -u",
                    c = "gcc -o $fileNameWithoutExt $fileName && ./$fileNameWithoutExt && rm $fileNameWithoutExt",
                    go = "go run",
                }
            }
        end
    }
}

-- load plugins
return require("packer").startup(function(use)
    for _, plugin in ipairs(plugins) do
        use(plugin)
    end
end)
