return {
  options = {
    globalstatus = vim.o.laststatus == 3,
    component_separators = "|",
    section_separators = "",
  },
  sections = {
    lualine_b = { { "filename", path = 3 } },
    lualine_c = { 'branch', 'diff', 'diagnostics' },
    lualine_x = { "hostname", "encoding", "fileformat", "filetype" },
  },
  tabline = {
    lualine_a = {
      {
        "buffers",
        mode = 2,
        use_mode_colors = true,
        filetype_names = {
          fzf = 'fzf',
        },
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "tabs" },
  },
}
