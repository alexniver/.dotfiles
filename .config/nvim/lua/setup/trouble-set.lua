-- Trouble Setup
require('trouble').setup {
    position = "right",
    width = 75,
    padding = true,
    auto_preview = false,
}


map("n", "<leader>e", ":TroubleToggle<CR>")
