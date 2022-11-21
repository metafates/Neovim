local modules = {
    "globals",
    "theme",
    "highlight",
    "mappings",
    "autocmd",
    "opts",
    "plugins.load",
    "lsp",
}


for _, module in ipairs(modules) do
    -- keep loading others if one fails
    require("util").tryload(module)
end
