require('packer').startup(function(use)
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
end)

require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran',
    jump_on_sole_occurrence = false,
}

map("n", "HH", ":HopWord<cr>")
map("n", "HP", ":HopPattern<cr>")
map("n", "HL", ":HopLineStart<cr>")
