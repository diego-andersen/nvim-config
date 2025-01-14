-- User-defined autocmds

local autocmd = vim.api.nvim_create_autocmd

-- Dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end,
})

-- Disable automatic commenting on newline
autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.cmd("setlocal formatoptions-=cro")
  end,
})