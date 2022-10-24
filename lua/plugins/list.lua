return {
    {
        "wbthomason/packer.nvim",
        desc = "Package manager",
    },
    {
        "github/copilot.vim", desc = "AI code completion",
    },
    {
        "neovim/nvim-lspconfig",
        desc = "LSP configuration",
    },
    {
        "lukas-reineke/lsp-format.nvim",
        desc = "LSP formatting",
    },
    {
        "nvim-telescope/telescope.nvim",
        desc = "Fuzzy finder",
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
        desc = "Fuzzy finder with C fzf",
    },
    {
        "ggandor/leap.nvim",
        desc = "Jump to words",
        config = function()
            require("leap").add_default_mappings()
        end,
    },
    {
        "nguyenvukhang/nvim-toggler",
        desc = "Toggle words",
        config = function()
            require("nvim-toggler").setup {}
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        desc = "Syntax highlighting",
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
        desc = "Keybindings",
        config = function()
            require("which-key").setup()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        desc = "Status line",
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
        desc = "Color highlighting",
        config = function()
            require("colorizer").setup()
        end
    },
    {
        "AlphaTechnolog/pywal.nvim",
        as = "pywal",
        desc = "Pywal colorscheme",
        config = function()
            require("pywal").setup()
        end
    },
    {
        "echasnovski/mini.nvim",
        desc = "Mini plugins (comment, lsp completion, autopairs)",
        config = function()
            require("mini.comment").setup()
            require("mini.completion").setup()
            require("mini.pairs").setup()
        end
    },
    {
        "CRAG666/code_runner.nvim",
        requires = "nvim-lua/plenary.nvim",
        desc = "Run code",
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
