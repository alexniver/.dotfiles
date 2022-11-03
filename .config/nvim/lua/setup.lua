-- mason setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup()

-- theme nightfox
vim.cmd("colorscheme nightfox")

-- symbols-outline setup
require("symbols-outline").setup {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 25,
    auto_close = true,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    autofold_depth = nil,
    auto_unfold_hover = true,
    fold_markers = { '', '' },
    wrap = false,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = { "<Esc>", "q" },
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-.>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
        fold = "h",
        unfold = "l",
        fold_all = "W",
        unfold_all = "E",
        fold_reset = "R",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = { icon = "", hl = "TSURI" },
        Module = { icon = "", hl = "TSNamespace" },
        Namespace = { icon = "", hl = "TSNamespace" },
        Package = { icon = "", hl = "TSNamespace" },
        Class = { icon = "𝓒", hl = "TSType" },
        Method = { icon = "ƒ", hl = "TSMethod" },
        Property = { icon = "", hl = "TSMethod" },
        Field = { icon = "", hl = "TSField" },
        Constructor = { icon = "", hl = "TSConstructor" },
        Enum = { icon = "ℰ", hl = "TSType" },
        Interface = { icon = "ﰮ", hl = "TSType" },
        Function = { icon = "", hl = "TSFunction" },
        Variable = { icon = "", hl = "TSConstant" },
        Constant = { icon = "", hl = "TSConstant" },
        String = { icon = "𝓐", hl = "TSString" },
        Number = { icon = "#", hl = "TSNumber" },
        Boolean = { icon = "⊨", hl = "TSBoolean" },
        Array = { icon = "", hl = "TSConstant" },
        Object = { icon = "⦿", hl = "TSType" },
        Key = { icon = "🔐", hl = "TSType" },
        Null = { icon = "NULL", hl = "TSType" },
        EnumMember = { icon = "", hl = "TSField" },
        Struct = { icon = "𝓢", hl = "TSType" },
        Event = { icon = "🗲", hl = "TSType" },
        Operator = { icon = "+", hl = "TSOperator" },
        TypeParameter = { icon = "𝙏", hl = "TSParameter" }
    }
}


-- FTerm
require 'FTerm'.setup({
    border     = 'single',
    -- cmd = os.getenv('SHELL'),
    cmd        = 'zsh',
    blend      = 0,
    dimensions = {
        height = 0.9,
        width = 0.65,
    },
})


-- null-ls for Vale, Selene and Markdown linters
require("null-ls").setup({
    sources = {
        -- require("null-ls").builtins.diagnostics.vale,
        -- require("null-ls").builtins.diagnostics.selene,
        require("null-ls").builtins.diagnostics.markdownlint.with({
            diagnostics_format = "[#{c}] #{m} (#{s})",
            filter = function(diagnostic)
                return diagnostic.code ~= "MD013/line-length"
            end,
        }),
    },
})


-- Headlines for Markdown
require "headlines".setup()


-- Fidget - show status of LSP progress
require "fidget".setup {
    window = {
        relative = "editor",
        blend = 10,
    },
}


-- Vale prose lint
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.vale,
    },
})


-- Hop
require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran',
    jump_on_sole_occurrence = false,
}

-- Todo Comments Setup
require('todo-comments').setup {
    colors = {
        error = { "DiagnosticError", "ErrorMsg", "#de5d68" },
        warning = { "DiagnosticWarning", "WarningMsg", "#eeb927" },
        info = { "DiagnosticInfo", "#57a5e5" },
        hint = { "DiagnosticHint", "#bb70d2" },
        default = { "Identifier", "#de5d68" },
    },
}


-- Trouble Setup
require('trouble').setup {
    position = "right",
    width = 75,
    padding = true,
    auto_preview = false,
}


-- Nvim Tree Setup
require('nvim-tree').setup {
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup_file = false,
    update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
    },
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
            glyphs = {
                git = {
                    unstaged = "-",
                    staged = "s",
                    untracked = "u",
                    renamed = "r",
                    deleted = "d",
                    ignored = "i",
                },
            },
        },
    },
    filters = {
        custom = { "^.git$" },
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
    -- actions.open_file.quit_on_open = true,
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
}


-- Telescope Setup
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
-- Get fzf loaded and working with extension
require('telescope').load_extension('fzf')

-- Autopairs Setup
require 'nvim-autopairs'.setup {}

-- Comment Setup
require('Comment').setup({
    mappings = {
        basic = false,
        extra = false,
        extended = false,
    },
})

-- Treesitter Plugin Setup
require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "rust", "toml" },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    ident = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}

-- rust tools
local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})

-- Crates Nvim
require('crates').setup({

})


----------------------------------------
-- LSP Server Configurations        ----
----------------------------------------

-- LSP Config
local nvim_lsp = require 'lspconfig'

-- LUA
-- -------------------------------------
require 'lspconfig'.sumneko_lua.setup {
    settings = {
        Lua = {
            runtime = {
                version = 'Lua 5.4',
                path = {
                    '?.lua',
                    '?/init.lua',
                    vim.fn.expand '~/.luarocks/share/lua/5.4/?.lua',
                    vim.fn.expand '~/.luarocks/share/lua/5.4/?/init.lua',
                    '/usr/share/5.4/?.lua',
                    '/usr/share/lua/5.4/?/init.lua'
                }
            },
            workspace = {
                library = {
                    vim.fn.expand '~/.luarocks/share/lua/5.4',
                    '/usr/share/lua/5.4'
                }
            }
        }
    }
}


-- LatEx with TexLab
require 'lspconfig'.texlab.setup {
    texlab = {
        auxDirectory = ".",
        bibtexFormatter = "texlab",
        build = {
            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
            executable = "latexmk",
            forwardSearchAfter = false,
            onSave = false
        },
        chktex = {
            onEdit = false,
            onOpenAndSave = false
        },
        diagnosticsDelay = 300,
        formatterLineLength = 80,
        forwardSearch = {
            args = {}
        },
        latexFormatter = "latexindent",
        latexindent = {
            modifyLineBreaks = false
        }
    }
}


-- Marksman
require 'lspconfig'.marksman.setup {
}




----------------------------------------
-- COMPLETION Setup                 ----
----------------------------------------

require('lspkind').init({
    -- mode = 'symbol_text'
})


vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 350)

local lspkind = require('lspkind')
local cmp = require 'cmp'

cmp.setup({
    -- Enable LSP snippets
    snippet = {
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For 'vsnip' users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = {
        -- Add tab support
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm { select = false }
    },
    -- Installed sources:
    sources = {
        { name = 'path' }, -- file paths
        { name = 'nvim_lsp', keyword_length = 1, priority = 10 }, -- from language server
        { name = 'crates', keyword_length = 1, priority = 10 },
        { name = 'luasnip', keyword_length = 1, priority = 7 }, -- for lua users
        { name = 'nvim_lsp_signature_help', priority = 8 }, -- display function signatures with current parameter emphasized
        { name = 'nvim_lua', keyword_length = 1, priority = 8 }, -- complete neovim's Lua runtime API such vim.lsp.*
        { name = 'buffer', keyword_length = 1, priority = 5 }, -- source current buffer
        -- { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip
        { name = 'calc' }, -- source for math calculation
    },
    window = {
        completion = {
            cmp.config.window.bordered(),
            col_offset = 3,
            side_padding = 1,
        },
        documentation = cmp.config.window.bordered(),

    },
    formatting = {
        fields = { 'menu', 'abbr', 'kind' },
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 60, -- prevent the popup from showing more than provided characters
            -- The function below will be called before any actual modifications from lspkind:
            before = function(entry, vim_item)
                local menu_icon = {
                    nvim_lsp = 'λ ',
                    luasnip = '⋗ ',
                    buffer = 'Ω ',
                    path = '🖫 ',
                }
                vim_item.menu = menu_icon[entry.source.name]
                return vim_item
            end,
        })

    },
    preselect = cmp.PreselectMode.None,
    confirmation = {
        get_commit_characters = function(commit_characters)
            return {}
        end
    },
})

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- wgsl
-- Recognize wgsl
vim.api.nvim_exec([[ au BufNewFile,BufRead *.wgsl set filetype=wgsl ]], false)
