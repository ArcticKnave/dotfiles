require('options')
require('lsp')
require('autocommands')
-- require('treesitter-nix')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>', { desc = "Source current file" })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Save" })
vim.keymap.set('n', '<leader>q', ':q!<CR>', { desc = "Quit" })

-- stops x from writing to clipboard
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')

--Keeps cursor in the middle while doing search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keeps selection on text when indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

--Keeps cursor in the middle while jumping half pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>/', "gcc", { remap = true, desc = "Comment current line" })

--- Matugen base16 errors fix
vim.pack.add({ "https://github.com/RRethy/base16-nvim" })

local ok, matugen = pcall(require, 'matugen')
if ok then matugen.setup() end
