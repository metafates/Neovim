local function load_modules(modules)
     for _, module in ipairs(modules) do
       local ok, err = pcall(require, module)
       if not ok then
          error("Error loading " .. module .. "\n\n" .. err)
       end
    end
end


return {
    load_modules = load_modules
}
