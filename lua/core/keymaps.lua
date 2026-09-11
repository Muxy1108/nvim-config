vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

keymap("i", "jk", "<Esc>", { desc = "Exit insert mode" })

keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

keymap("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<cmd>split<cr>", { desc = "Split window horizontally" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
