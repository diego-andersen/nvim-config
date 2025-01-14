-- These options are set before anything else in global init.lua, and are core settings traditionally found in init.vim

local opt = vim.opt
local g = vim.g

g.have_nerd_font = true -- Set to true if you're using a Nerd Font -- affects devicons

-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins/keymaps are loaded, otherwise wrong leader will be used
g.mapleader = " "
g.maplocalleader = " "

-- General options
opt.laststatus = 3 -- Global statusline
opt.showmode = false
opt.showcmd = false
opt.autoread = true
opt.cursorline = true
opt.scrolloff = 4
opt.termguicolors = true
opt.undofile = true
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  eob = " ",
}

-- Yank to system clipboard if local
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Indentation
opt.tabstop = 4        -- Number of spaces a tab counts for in the file
opt.softtabstop = 4    -- Number of spaces a tab counts for during editing
opt.shiftwidth = 4     -- Size of an indent
opt.expandtab = true   -- Replace spaces with tabs
opt.smartindent = true -- Auto-indent new lines
opt.breakindent = true -- Indent wrapped lines to the same level as the beginning

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = true
opt.signcolumn = "yes"

-- Search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Disable vim intro, don't display search-related messages
opt.shortmess:append "sI"

-- Split behaviour
opt.splitright = true
opt.splitbelow = true

-- Interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- Decrease keybind wait time (also displays which-key sooner)
opt.timeoutlen = 400

-- Disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

-- Folding & scrolling
if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
