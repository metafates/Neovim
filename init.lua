local modules = {
    "globals",
    "mappings",
    "autocmd",
    "opts",
    "plugins",
    "lsp",
}


for _, module in ipairs(modules) do
    -- keep loading others if one fails
    require("util").tryload(module)
end
