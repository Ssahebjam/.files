vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i","jk","<ESC>")

keymap.set("n", "<C-b>",":Ex<cr>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>h", "<C-w>h", {silent = true})
keymap.set("n", "<leader>j", "<C-w>j", {silent = true})
keymap.set("n", "<leader>k>", "<C-w>k", {silent = true})
keymap.set("n", "<leader>l", "<C-w>l", {silent = true})

keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>/", "<cmd>split<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>`", "<C-w>o")

keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
