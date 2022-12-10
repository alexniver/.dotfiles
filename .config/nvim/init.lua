-- [[ init.lua ]]
-- LEADER
-- These keybindings need to be defined before first /
-- is called; otherwise, it will default to "\"

-- fast startup
-- require('impatient')

vim.g.mapleader = ",";
vim.g.localleader = "\\";

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- last position
vim.api.nvim_exec([[ autocmd BufRead * autocmd FileType <buffer> ++once
      \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif ]], false)

-- set clipboard+=unnamedplus

-- IMPORTS
require('vars') -- Variables
require('opts') -- Options
require('plug') -- Plugins
require('setup') -- Plugin Setup
require('keys') -- Keymaps
