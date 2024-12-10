-- Plugin spec for lazy.nvim plugin manager. Specifies all plugins to be (down)loaded.

return {
  -- Lua helper function library
  "nvim-lua/plenary.nvim",

  -- Default colorscheme
  {
    "RRethy/base16-nvim",
    lazy = false,                          -- Load this during startup
    priority = 1000,                       -- Load this before all other plugins
    config = function()
      vim.cmd([[colorscheme base16-nord]]) -- Set colorscheme here
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    -- See ":help lualine.txt"
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus

      if vim.fn.argc(-1) > 0 then
        -- Set an empty statusline until lualine loads
        vim.o.statusline = " "
      else
        -- Hide the statusline on the starter page
        vim.o.laststatus = 0
      end
    end,
    opts = require "plugins.config.lualine",
  },
}
