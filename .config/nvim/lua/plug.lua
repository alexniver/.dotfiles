-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins Go Here ]]
    -- fast startup
    use 'lewis6991/impatient.nvim'

    -- mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- coc
    -- use { 'neoclide/coc.nvim', branch = 'release' }

    -- theme
    use "EdenEast/nightfox.nvim"

    -- symbols-outline
    use 'simrat39/symbols-outline.nvim'

    -- FTerm
    use "numToStr/FTerm.nvim"

    -- null-ls
    use 'jose-elias-alvarez/null-ls.nvim'

    -- headlines
    use {
        'lukas-reineke/headlines.nvim',
        config = function()
            require('headlines').setup()
        end,
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- tagbar
    use "preservim/tagbar"

    -- fidget
    use 'j-hui/fidget.nvim'

    -- hop
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    -- lsp config
    -- use "williamboman/nvim-lsp-installer"
    use 'neovim/nvim-lspconfig'

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- todo comments
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    -- trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }

    -- telescope media files
    use 'nvim-telescope/telescope-media-files.nvim'

    -- fzf
    use 'junegunn/fzf.vim'

    -- telescope fzf
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    -- ron
    use "ron-rs/ron.vim"

    -- nvim tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }

    -- auto pairs
    use 'windwp/nvim-autopairs'

    -- comment
    use 'numToStr/Comment.nvim'

    -- luasnip
    use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

    -- rust tools
    use 'simrat39/rust-tools.nvim'

    -- vimspector
    use 'puremourning/vimspector'

    -- indent-blankline
    use "lukas-reineke/indent-blankline.nvim"

    -- vim-surround
    use "tpope/vim-surround"

    -- vim-illuminate
    use "RRethy/vim-illuminate"

    -- hlargs
    use {
        'm-demare/hlargs.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }

    -- crates
    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    -- lspkind
    use 'onsails/lspkind.nvim'

    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    -- Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'
    -- Useful completion sources
    use 'hrsh7th/cmp-path'
    -- Useful completion sources
    use 'hrsh7th/cmp-buffer'
    -- Snippet engine
    use 'hrsh7th/vim-vsnip'
end)
