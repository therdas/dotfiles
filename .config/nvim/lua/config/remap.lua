vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ev", vim.cmd.Ex)

-- show undotrtee
vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

-- allow moving lines using JK while selected in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in same space post next-line append
vim.keymap.set("n", "J", "mzJ`z")

-- page up and down but with cursor at center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search result at center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- don't overwrite current yank buffer on paste overwriting selection
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete copied item
vim.keymap.set("n", "<leader>d", "\"d")
vim.keymap.set("v", "<leader>d", "\"d")

-- disable Ex mode
vim.keymap.set("n", "Q", "<nop>")

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
