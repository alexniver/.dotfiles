require('packer').startup(function(use)
    use 'nvim-lua/plenary.nvim'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }

    use 'nvim-telescope/telescope-file-browser.nvim'

    -- telescope media files
    use 'nvim-telescope/telescope-media-files.nvim'

    -- fzf
    use 'junegunn/fzf.vim'

    -- telescope fzf
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

end)


require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "^./.git/",
            "^./target/",
            "LICENSE*"
        },
        layout_strategy = 'vertical',
        layout_config = { height = 0.95, width = 0.95 },
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = { "png", "webp", "jpg", "jpeg", "ppm", "pdf" },
            find_cmd = "rg", -- find command (defaults to `fd`)
        },
    },
}
-- load extension to support preview of media files
require('telescope').load_extension('media_files');
-- load extensions to support file_browser
require("telescope").load_extension('file_browser')
-- Get fzf loaded and working with extension
require('telescope').load_extension('fzf')


-- Telescope
map("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<cr>")
map("n", "<leader>fm", ":Telescope media_files<cr>")
map("n", "<leader>fo", ":Telescope file_browser<cr>")
map("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>")
map("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<cr>")
map("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<cr>")
map("n", "<leader>fd", ":lua require('telescope.builtin').diagnostics()<cr>")
map("n", "<leader>fs", ":lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
map("n", "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>")
map("n", "<leader>fi", ":lua require('telescope.builtin').lsp_implementations()<cr>")
map("n", "<leader>fl", ":lua require('telescope.builtin').treesitter()<cr>")
map("n", "<leader>fk", ":lua require('telescope.builtin').keymaps()<cr>")

map("n", "<leader>fc", ":lua require('telescope.builtin').commands()<cr>")
map("n", "<leader>fch", ":lua require('telescope.builtin').command_history()<cr>")
map("n", "<leader>fsh", ":lua require('telescope.builtin').search_history()<cr>")
map("n", "<leader>fmp", ":lua require('telescope.builtin').man_pages()<cr>")
map("n", "<leader>fgc", ":lua require('telescope.builtin').git_commits()<cr>")
map("n", "<leader>fgb", ":lua require('telescope.builtin').git_branches()<cr>")
