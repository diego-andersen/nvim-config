-- Bootstrap lazy.nvim if not present
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", repo, lazypath }
  vim.opt.rtp:prepend(lazypath)
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "config.lazy"

-- Need this to run before Lazy setup as it maps leader/localleader
require "config.options"

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
}, lazy_config)

require "config.autocmds"

vim.schedule(function()
  require "config.keymappings"
end, 0)
