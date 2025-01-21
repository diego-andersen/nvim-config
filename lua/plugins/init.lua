-- Plugin spec for lazy.nvim plugin manager. Specifies all plugins to be (down)loaded.

local telescope = require("telescope.builtin")

return {
  -- Lua helper function library
  "nvim-lua/plenary.nvim",

  -- Default colorscheme
  {
    "RRethy/base16-nvim",
    lazy = false,    -- Load this during startup
    priority = 1000, -- Load this before all other plugins
    config = function()
      require("base16-colorscheme").with_config({
        telescope = false,
      })
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

  -- Key mapping lookup
  {
    "folke/which-key.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "echasnovski/mini.icons",
    },
    event = "VeryLazy",
    opts = require("plugins.config.which-key"),
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = require("plugins.config.telescope"),
    keys = {
      { "<leader>ff", telescope.find_files, desc = "Telescope: find files" },
      { "<leader>fg", telescope.live_grep,  desc = "Telescope: live grep" },
      { "<leader>fb", telescope.buffers,    desc = "Telescope: buffers" },
      { "<leader>fh", telescope.help_tags,  desc = "Telescope: help tags" },
      {
        "<leader>f~",
        function()
          telescope.find_files({
            search_dirs = { "~" },
            cwd = "~",
            hidden = true,
          })
        end,
        desc = "Telescope: search home"
      },
    },
  },
}
