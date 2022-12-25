----------------------------------------------------[[ Settings ]]--------------------------------------------
-- [[ global ]]
local g = vim.g
g.t_co = 256
g.background = "dark"

-- [[ leader ]]
g.mapleader = ",";
g.localleader = "\\";

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- [[ last position ]]
vim.api.nvim_exec([[ autocmd BufRead * autocmd FileType <buffer> ++once
      \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif ]], false)


--[[ opts.lua ]]
local opt = vim.opt -- with vim.opt we can set global, window and buffer settings, acting like :set in vimscript
local set = vim.opt
local o = vim.o
local cmd = vim.api.nvim_command

-- [[ ident ]]
vim.cmd([[
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
]])
vim.api.nvim_exec([[ autocmd BufRead,BufNewFile *.htm,*.html,*.jsx,*.tsx,*.js,*.ts setlocal tabstop=2 shiftwidth=2 softtabstop=2 ]], false)


-- [[ Spell check ]]
vim.cmd([[
set spelllang=en_us
]])


-- [[ line number ]]
opt.number = true -- bool: Show line numbers
opt.relativenumber = true -- bool: Show relative line numbers
opt.scrolloff = 4 -- int:  Min num lines of context
opt.signcolumn = "yes" -- str:  Show the sign column
opt.numberwidth = 4 -- gutter width
set.cursorline = true -- display cursor line
set.cursorlineopt = 'number' --
-- set.laststatus = 3                  -- show just one status line


-- [[ Filetypes ]]
opt.encoding = 'utf8' -- str:  String encoding to use
opt.fileencoding = 'utf8' -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON" -- str:  Allow syntax highlighting
opt.termguicolors = true -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true -- bool: Ignore case in search patterns
opt.smartcase = true -- bool: Override ignorecase if search contains capitals
opt.incsearch = true -- bool: Use incremental search
opt.hlsearch = false -- bool: Highlight search matches

-- [[ Tab with Whitespace ]]
opt.expandtab = true -- bool: Use spaces instead of tabs
opt.shiftwidth = 4 -- num:  Size of an indent
opt.softtabstop = 4 -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4 -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true -- bool: Place new window to right of current one
opt.splitbelow = true -- bool: Place new window below the current one

-- [[ Key Map func ]]
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Load all OPTs
map("n", "<F10>", ":luafile ~/.config/nvim/lua/opts.lua<cr>")


-- Enable spell checking
map("n", "<F11>", ":set spell!<cr>")
-- zg to add word
-- z= to correct error
-- new words  added to ~/.config/nvim/spell/en.utf-8.add


vim.cmd([[
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
]])

-- Save and exit
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>qa", ":qa<CR>")

-- Window navigation
map("n", "<C-j>", "<C-w>j<C-w>")
map("n", "<C-h>", "<C-w>h<C-w>")
map("n", "<C-k>", "<C-w>k<C-w>")
map("n", "<C-l>", "<C-w>l<C-w>")

-- Toggle colored column at 81
map('n', '<leader>|', ':execute "set colorcolumn=" . (&colorcolumn == "" ? "81" : "")<CR>')

-- Navigate buffers
map('n', '<leader>bp', ':bprevious<CR>', {})
map('n', '<leader>bn', ':bnext<CR>', {})
map('n', '<leader>bf', ':bfirst<CR>', {})
map('n', '<leader>bl', ':blast<CR>', {})
map('n', '<leader>bd', ':bdelete<CR>', {})



-- [[ Format on Save ]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]


-- [[ Vimspector, debugger ]]
vim.cmd([[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]])


-- [[ LSP Diagnostics Options Setup ]]
local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end
sign({ name = 'DiagnosticSignError', text = '' })
sign({ name = 'DiagnosticSignWarn', text = '' })
sign({ name = 'DiagnosticSignHint', text = '' })
sign({ name = 'DiagnosticSignInfo', text = '' })

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = false,
    severity_sort = true,
    float = {
        border = 'single',
        source = 'always',
        header = '',
        prefix = '- ',
    },
})

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.o.updatetime = 350
set.signcolumn = 'yes'
vim.cmd([[
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])



-- Fix common typos
vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev W1 w!
    cnoreabbrev w1 w!
    cnoreabbrev Q! q!
    cnoreabbrev Q1 q!
    cnoreabbrev q1 q!
    cnoreabbrev Qa! qa!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wa wa
    cnoreabbrev Wq wq
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev wq1 wq!
    cnoreabbrev Wq1 wq!
    cnoreabbrev wQ1 wq!
    cnoreabbrev WQ1 wq!
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qa qa
    cnoreabbrev Qall qall
]])


vim.cmd([[
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
]])


-- [[ vim lsp hotkey ]]
map('n', "fa", ":lua vim.lsp.buf.code_action()<CR>")
vim.cmd([[
nnoremap <silent> <c-]>     <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <c-k>     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> K         <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi        <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gc        <cmd>lua vim.lsp.buf.incoming_calls()<CR>
nnoremap <silent> gd        <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr        <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gn        <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gs        <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gw        <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
]])


------------------------------------------[[ Plugins ]]-------------------------------------------------

require('plugin')

local plug_list = {
    -- [[ impatient, fast startup ]]
    "impatient",
    -- [[ theme, nightfox ]]
    "nightfox",
    -- [[ FTerm, a easy use term ]]
    "fterm",
    -- [[ symbols-outline, func list treelike view ]]
    "symbols-outline",
    -- [[ headlines, adds highlights for text filetypes ]]
    "headlines",
    -- [[ lualine, statusline ]]
    "lualine",
    -- [[ nvim tree ]]
    "nvim-tree",
    -- [[ tagbar, need install 'ctags' ]]
    "tagbar",
    -- [[ hop, jump anywhere in a document with as few keystrokes as possible ]]
    "hop",
    --[[ nvim-treesitter, highlight for all language ]]
    "nvim-treesitter",
    -- [[ todo-comments, highlight and search for todo comments like TODO, HACK, BUG ]]
    "todo-comments",
    -- [[ trouble, A pretty list for showing diagnostics, references, telescope results, quickfix and location lists. ]]
    "trouble",
    -- [[ telescope, fzf, telescope-fzf-native, telescope-media-files ]]
    "nvim-telescope",
    -- [[ rnvimr, Ranger plugin for nvim, need install ranger ]]
    "rnvimr",
    -- [[ auto pair, auto pair ts tag ]]
    "autopairs",
    -- [[ Comment, quick comment ]]
    "comment",
    -- [[ nvim auto complete for lsp ]]
    "nvim-cmp",
    -- [[ indent-blankline, adds indentation guides to all lines (including empty lines). ]]
    "indent-blankline",
    -- [[ vim-surround, parentheses, brackets, quotes, XML tags refactor. ]]
    "vim-surround",
    -- [[ nvim-colorizer, show color for color, white: #ffffff ]]
    "nvim-colorizer",
    -- [[ nvim-lspconfig ]]
    "nvim-lspconfig",
    -- [[ mason, LSP manager ]]
    "mason",
    -- [[ null-ls, inject LSP diagnostics ]]
    "null-ls",
    -- [[ prettier, for format code, need install 'npm install -g @fsouza/prettierd' ]]
    "prettier",
    -- [[ fidget, lsp progress ui ]]
    "fidget",
    -- [[ vim-illuminate ]]
    -- [[ automatically highlighting other uses of the word under the cursor using either LSP, Tree-sitter, or regex matching. ]]
    "vim-illuminate",
    -- [[ hlargs.nvim ]]
    -- [[ Highlight arguments' definitions and usages, asynchronously, using Treesitter ]]
    "hlargs",
    -- [[ git ]]
    "git",
    -- [[ rust ]]
    "rust",
}



for _, v in ipairs(plug_list) do
    require("setup." .. v .. "-set")
end
