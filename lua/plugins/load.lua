local fn = vim.fn

-- install packer if not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    local packer_repo = "https://github.com/wbthomason/packer.nvim.git"
    fn.system({ "git", "clone", packer_repo, install_path })
end

-- load plugins
return require("packer").startup(function(use)
    for _, plugin in ipairs(require("plugins.list")) do
        use(plugin)
    end

    -- generate readme as update hook
    require("packer").post_update = function()
        require("docs.readme").generate()
    end
end)
