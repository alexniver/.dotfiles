require('packer').startup(function(use)
    use 'j-hui/fidget.nvim'
end)

require('fidget').setup {
    window = {
        relative = "editor",
        blend = 10,
    },
}


