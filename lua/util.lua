local function merge(...)
    local t = {}
    for i = 1, select("#", ...) do
        local v = select(i, ...)
        if type(v) == "table" then
            for k, v in pairs(v) do
                t[k] = v
            end
        else
            t[i] = v
        end
    end
    return t
end

local function tryload(module)
    local ok, err = pcall(require, module)
    if not ok then
        print("Error loading " .. module)
        print(vim.inspect(err))
    end
end

local function listplugins()
    local plugins = {}
    for _, plugin in pairs(require("plugins.list")) do
        table.insert(plugins, {
            name = plugin[1],
            url = "https://github.com/" .. plugin[1],
            desc = plugin.desc
        })
    end
    return plugins
end

return {
    merge = merge,
    tryload = tryload,
    listplugins = listplugins
}
