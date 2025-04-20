require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Move harlf screen up/down and set cursor center
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
-- Iterate through search results
map("n", "n", "nzz")
map("n", "N", "Nzz")
-- Disable arrows in normal Mode
map("n", "<Up>", "<Nop>")
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")
map("n", "<Down>", "<Nop>")
-- Disable arrows in insert Mode
map("i", "<Up>", "<Nop>")
map("i", "<Left>", "<Nop>")
map("i", "<Right>", "<Nop>")
map("i", "<Down>", "<Nop>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
