return {
    "tpope/vim-fugitive",
    config = function ()
        vim.keymap.set("n", "<leader>g", ":G<cr>")
    end
}
