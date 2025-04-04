return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  opts = {
    defaults = {
      prompt_prefix = "  ",
      file_ignore_patterns = {
        "miniforge3/",
        ".docker*",
        ".npm*",
        ".vscode",
      },
      mappings = {
        i = {
          ["<esc>"] = function(prompt_bufnr) require("telescope.actions").close(prompt_bufnr) end,
          ["<C-u>"] = false,
          ["<C-d>"] = false,
          ["<C-Up>"] = function(prompt_bufnr) require("telescope.actions").preview_scrolling_up(prompt_bufnr) end,
          ["<C-Down>"] = function(prompt_bufnr) require("telescope.actions").preview_scrolling_down(prompt_bufnr) end,
        },
      },
    },
  },
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Telescope: find files" },
    { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Telescope: recent buffers" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Telescope: buffers" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Telescope: help tags" },
    { "<leader>fp", function() require("telescope.builtin").registers() end, desc = "Telescope: registers" },
    { "<leader>fl", function() require("telescope.builtin").live_grep() end, desc = "Telescope: live grep" },
    { "<leader>fs", function() require("telescope.builtin").grep_string() end, desc = "Telescope: grep string" },

    {
      "<leader>f~",
      function()
        require("telescope.builtin").find_files({
          find_command = { "fd", "--type", "f", "--color", "never", "-E", ".git" },
          search_dirs = { "~" },
          cwd = "~",
          hidden = true,
        })
      end,
      desc = "Telescope: search home"
    },
  },
  -- Bad practice required to make fzf sorter load
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("fzf")
  end,
}
