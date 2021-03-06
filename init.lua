local load_modules = require("utils").load_modules

local core_modules = {
    "core.settings",
    "core.mappings",
    "core.options",
    "core.autocmd",
    "core.globals"
}

local plugins_modules = {
    "plugins",
    "plugins.configs.nvim-tree",
    "plugins.configs.toggleterm",
    "plugins.configs.lualine",
    "plugins.configs.alpha",
    "plugins.configs.wilder",
    "plugins.configs.treesitter",
    "plugins.configs.code-runner"
}

local colors_modules = {
    "colors"
}

load_modules(core_modules)
load_modules(plugins_modules)
load_modules(colors_modules)
