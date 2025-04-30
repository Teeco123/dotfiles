local set = vim.keymap.set

set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
set("n", "<C-s>", ":w<CR>")
set("n", "<C-l>", ":nohlsearch<CR>")

-- Move harlf screen up/down and set cursor center
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
-- Iterate through search results
set("n", "n", "nzz")
set("n", "N", "Nzz")
-- Disable arrows in normal Mode
set("n", "<Up>", "<Nop>")
set("n", "<Left>", "<Nop>")
set("n", "<Right>", "<Nop>")
set("n", "<Down>", "<Nop>")
-- Disable arrows in insert Mode
set("i", "<Up>", "<Nop>")
set("i", "<Left>", "<Nop>")
set("i", "<Right>", "<Nop>")
set("i", "<Down>", "<Nop>")
