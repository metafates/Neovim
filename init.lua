local load_modules = require("utils").load_modules

local core_modules = {
    "core.settings",
    "core.mappings",
    "core.autocmd"
}

local plugins_modules = {
    "plugins",
    "plugins.configs.alpha",
    "plugins.configs.toggleterm",
    "plugins.configs.lualine",
    "plugins.configs.notify"
}

local colors_modules = {
    "colors"
}

load_modules(core_modules)
load_modules(plugins_modules)
load_modules(colors_modules)



