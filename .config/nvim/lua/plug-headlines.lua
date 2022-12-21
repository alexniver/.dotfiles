require('packer').startup(function(use)
    use {
        'lukas-reineke/headlines.nvim',
        config = function()
            require('headlines').setup()
        end,
    }
end)

require "headlines".setup()
