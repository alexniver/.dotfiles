require('packer').startup(function(use)
    use "tpope/vim-fugitive"
end)


map("n", "<leader>Gi", ":Git commit<CR>")
map("n", "<leader>Gaa", ":Git add %<CR>")
map("n", "<leader>Gpmr", ":Git push origin master<CR>")
map("n", "<leader>Gpmn", ":Git push origin main<CR>")
