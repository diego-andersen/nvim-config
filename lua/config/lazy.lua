-- Config for lazy.nvim plugin manager

return {
  defaults = {
    lazy = true,     -- Lazy-load all plugins
    version = false, -- Always use latest commit
  },

  -- Try to load this when starting an installation during startup
  install = { colorscheme = { "base16-nord" } },

  ui = {
    size = { width = 0.6, height = 0.6 },
    title = "Plugins",
    title_pos = "center",
    border = "single",
    icons = {
      ft = "",
      lazy = "󰒲",
      loaded = "",
      not_loaded = "",
    },
  },

  -- Check for config file changes and reload UI
  change_detection = {
    enabled = true,
    notify = true,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
