local nvim_lsp = require('lspconfig')

local servers = {
    { name = "pyright" },
    { name = "gopls" },
    { name = "sumneko_lua" },
    { name = "jsonls" },
    { name = "rust_analyzer" },
    {
        name = "clangd",
        opts = {
            cmd = { "clangd", "--background-index", "--suggest-missing-includes", "--clang-tidy",
                "--header-insertion=iwyu" },
            capabilities = {
                offsetEncoding = "utf-8"
            },
        }
    },
}


local on_attach = function(client)
    require("lsp-format").on_attach(client)
end

for _, server in ipairs(servers) do
    local options = {
        on_attach = on_attach,
    }

    -- merge setup table if it exists
    if server.opts then
        for k, v in pairs(server.opts) do
            options[k] = v
        end
    end

    nvim_lsp[server.name].setup(options)
end
