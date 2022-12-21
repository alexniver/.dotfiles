require('packer').startup(function(use)
    use 'preservim/tagbar.nvim'
end)

map('n', "<leader>b", ":TagbarToggle<CR>");
