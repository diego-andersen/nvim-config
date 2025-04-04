return {
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
  opts = {
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
  },
}
