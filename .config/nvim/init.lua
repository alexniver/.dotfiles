-- [[ init.lua ]]
-- LEADER
-- These keybindings need to be defined before first /
-- is called; otherwise, it will default to "\"

-- fast startup
require('impatient')

vim.g.mapleader = ","
vim.g.localleader = "\\"

-- set clipboard+=unnamedplus

-- IMPORTS
require('vars') -- Variables
require('opts') -- Options
require('plug') -- Plugins
require('setup') -- Plugin Setup
require('keys') -- Keymaps
