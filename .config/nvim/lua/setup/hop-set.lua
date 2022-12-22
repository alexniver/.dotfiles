require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran',
    jump_on_sole_occurrence = false,
}

map("n", "HH", ":HopWord<cr>")
map("n", "HP", ":HopPattern<cr>")
map("n", "HL", ":HopLineStart<cr>")
