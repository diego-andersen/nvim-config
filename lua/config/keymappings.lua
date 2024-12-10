-- User-defined keymappings.

local map = vim.keymap.set

-- Interactive mode
map("i", "<C-b>", "<ESC>^i", { desc = "Go to beginning of line | general" })
map("i", "<C-e>", "<End>", { desc = "Go to end of line | general" })
map("i", "<C-h>", "<Left>", { desc = "Move left | general" })
map("i", "<C-l>", "<Right>", { desc = "Move right | general" })
map("i", "<C-j>", "<Down>", { desc = "Move down | general" })
map("i", "<C-k>", "<Up>", { desc = "Move up | general" })

-- Normal mode
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights | general" })
map("n", "<C-h>", "<C-w>h", { desc = "Window left | general" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right | general" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down | general" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up | general" })
-- map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file | general" })
-- map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy whole file | general" })
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number | general" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number | general" })
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer | general" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close buffer | general" })
-- map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Mapping cheatsheet | general" })

-- NvimTree
if vim.g.nvimtree_maps then
  map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvimtree | nvimtree" })
  map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus nvimtree | nvimtree" })
end
