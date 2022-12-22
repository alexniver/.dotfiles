-- rnvimr
vim.g.rnvimr_enable_ex = 1

-- Make Ranger to be hidden after picking a file
vim.g.rnvimr_enable_picker = 1

-- Replace `$EDITOR` candidate with this command to open the selected file
vim.g.rnvimr_edit_cmd = 'drop'

-- Disable a border for floating window
vim.g.rnvimr_draw_border = 0

-- Hide the files included in gitignore
vim.g.rnvimr_hide_gitignore = 1

-- Change the border's color
vim.g.rnvimr_border_attr = { fg = 14, bg = -1 }

-- Make Neovim wipe the buffers corresponding to the files deleted by Ranger
vim.g.rnvimr_enable_bw = 1

-- Add a shadow window, value is equal to 100 will disable shadow
vim.g.rnvimr_shadow_winblend = 70

-- Draw border with both
vim.g.rnvimr_ranger_cmd = { 'ranger', '--cmd=set draw_borders both' }

-- Link CursorLine into RnvimrNormal highlight in the Floating window
vim.cmd('highlight link RnvimrNormal CursorLine')


map("n", "<leader>r", ":RnvimrToggle<CR>")
