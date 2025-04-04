return {
  "RRethy/base16-nvim",
  lazy = false,    -- Load this during startup
  priority = 1000, -- Load this before all other plugins
  config = function()
    require("base16-colorscheme").with_config({
      telescope = false,
    })
    vim.cmd([[colorscheme base16-nord]]) -- Set colorscheme here
  end,
}
