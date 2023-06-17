vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- move highted text in V mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("x", "<leader>p", "\"_dP") -- past highleted stuff without removeing it from buffer


-- yeank into system clipboard with leader y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- C j and k remaps for c-u and c-d
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")


-- delete to voud register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")


-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- for tmux stuff. maybe enable once thats fugured out

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")


-- increment numbers and stuff :)
vim.keymap.set("n", "<C-z>", "<C-a>")
