-- User-defined keymappings.

local map = vim.keymap.set

-- Lazy plugin manager
map("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Lazy console" })

-- Better up/down movement
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Cursor movement in interactive mode
map("i", "<C-b>", "<ESC>^i", { desc = "Go to beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Go to end of line" })
map("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
map("i", "<C-j>", "<Down>", { desc = "Move cursor down" })
map("i", "<C-k>", "<Up>", { desc = "Move cursor up" })
map("i", "<C-l>", "<Right>", { desc = "Move cursor right" })

-- Move lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<CR>==", { desc = "Move line up" })
map("i", "<A-j>", "<esc><cmd>m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<esc><cmd>m .-2<CR>==gi", { desc = "Move line up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<CR>gv=gv", { desc = "Move line down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<CR>gv=gv", { desc = "Move line up" })

-- Move between windows with CTRL + hjkl
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })

-- Resize windows with CTRL + arrow keys
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Manage windows
map("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>wq", "<C-W>q", { desc = "Close window", remap = true })
map("n", "<leader>ww", "<C-W>w", { desc = "Cycle windows", remap = true })

-- Buffers
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "New buffer" })
map("n", "<leader>bq", "<cmd>bd<CR>", { desc = "Close buffer" })
map("n", "<leader>bs", "<cmd>w<CR>", { desc = "Save buffer" })
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Switch to last buffer" })

-- Tabs
map("n", "<leader>tl", "<cmd>tablast<CR>", { desc = "Last Tab" })
map("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close Other Tabs" })
map("n", "<leader>tf", "<cmd>tabfirst<CR>", { desc = "First Tab" })
map("n", "<leader>t[", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })
map("n", "<leader>t]", "<cmd>tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })
map("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close Tab" })

-- Make n and N always search forward/back
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- Clear search highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

-- Line numbers
map("n", "<leader>ln", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>lr", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Quit
map("n", "<leader>Q", "<cmd>qa<CR>", { desc = "Quit neovim" })
