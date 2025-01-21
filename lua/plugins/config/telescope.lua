local actions = require("telescope.actions")

return {
  defaults = {
    file_ignore_patterns = {
      "miniforge3/",
      ".docker*",
      ".npm*",
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-u>"] = false,
        ["<C-d>"] = false,
        ["<C-y>"] = actions.preview_scrolling_up,
        ["<C-e>"] = actions.preview_scrolling_down,
      },
    },
  },
}
