return {
  preset = "modern",
  delay = 500,
  spec = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer-local mappings",
    },
    { "<leader>b", group = "buffer" },
    { "<leader>w", group = "window",      proxy = "<C-W>" },
    { "<leader>t", group = "tab" },
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
