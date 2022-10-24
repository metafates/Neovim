local function header(level, text)
    return string.rep("#", level) .. " " .. text .. "\n\n"
end

local function list(items, show)
    local l = ""
    for _, item in ipairs(items) do
        l = l .. "- " .. show(item) .. "\n"
    end

    return l
end

local function generateReadme()
    local root = vim.fn.stdpath("config")
    local readme = io.open(root .. "/README.md", "w")
    if readme == nil then
        print("Failed to open README.md")
        return
    end

    readme:write(header(1, "Neovim config"))
    readme:write(header(2, "Plugins"))

    readme:write(list(require("util").listplugins(), function(plugin)
        return string.format("[%s](%s) - %s", plugin.name, plugin.url, plugin.desc)
    end))

    readme:close()
end

return {
    generate = generateReadme
}
