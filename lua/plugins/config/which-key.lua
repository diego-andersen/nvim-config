return {
  preset = "modern",
  delay = 500,
  spec = {
    {
      mode = { "n", "v" },
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer-local mappings",
    },
    { "<leader>b", group = "buffers" },
    { "<leader>w", group = "windows",     proxy = "<C-W>" },
    { "<leader>t", group = "tabs" },
    { "<leader>l", group = "line numbers" },
    { "g",         group = "goto" },
    { "[",         group = "previous" },
    { "]",         group = "next" },
    {
      "<leader>bg",
      expand = function()
        return require("which-key.extras").expand.buf()
      end,
      desc = "Switch to buffer",
    },
    {
      "<leader>wg",
      expand = function()
        return require("which-key.extras").expand.win()
      end,
      desc = "Switch to window",
    },
  },
  plugins = {
    spelling = {
      enabled = false,
    },
  },
  win = {
    border = "single",
    width = 0.8,
    col = 0.5, -- Center which-key on window
  },
  layout = {
    spacing = 4,
  },
}
