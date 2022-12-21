require('packer').startup(function(use)
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
end)

require 'nvim-autopairs'.setup {}
require('nvim-ts-autotag').setup {}
