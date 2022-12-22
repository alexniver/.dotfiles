require('packer').startup(function(use)

    ------------------[[ impatient ]]--------------------------------------------------
    use 'lewis6991/impatient.nvim'


    ------------------[[ nightfox ]]--------------------------------------------------
    use "EdenEast/nightfox.nvim"


    ------------------[[ FTerm ]]-----------------------------------------------------
    use "numToStr/FTerm.nvim"


    ------------------[[ symbols-outline ]]-------------------------------------------
    use 'simrat39/symbols-outline.nvim'


    ------------------[[ headlines ]]-------------------------------------------------
    use {
        'lukas-reineke/headlines.nvim',
        config = function()
            require('headlines').setup()
        end,
    }


    ------------------[[ lualine ]]---------------------------------------------------
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }


    ------------------[[ nvim-tree ]]-------------------------------------------------
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }


    ------------------[[ tagbar ]]-----------------------------------------------------
    --use 'preservim/tagbar.nvim'


    ------------------[[ hop ]]--------------------------------------------------------
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }


    ------------------[[ nvim-treesitter ]]---------------------------------------------
    use 'nvim-treesitter/nvim-treesitter'

    
    ------------------[[ todo-comments ]]-----------------------------------------------
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }


    ------------------[[ trouble ]]-----------------------------------------------------
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }


    ------------------[[ telescope ]]---------------------------------------------------
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
            

    ------------------[[ telescope ]]---------------------------------------------------
    use 'kevinhwang91/rnvimr'


    ------------------[[ autopairs ]]---------------------------------------------------
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'


    ------------------[[ Comment ]]-----------------------------------------------------
    use 'numToStr/Comment.nvim'


    ------------------[[ auto complete ]]-----------------------------------------------
    use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

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
    -- lsp kind
    use 'onsails/lspkind.nvim'
    -- snip content
    use "rafamadriz/friendly-snippets"


    ------------------[[ auto complete ]]-----------------------------------------------
    use "lukas-reineke/indent-blankline.nvim"


    ------------------[[ surround ]]----------------------------------------------------
    use "tpope/vim-surround"


    ------------------[[ colorizer ]]---------------------------------------------------
    use 'norcalli/nvim-colorizer.lua'


    ------------------[[ lspconfig ]]---------------------------------------------------
    use 'neovim/nvim-lspconfig'


    ------------------[[ mason ]]---------------------------------------------------
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'


    ------------------[[ mason ]]---------------------------------------------------
    use 'jose-elias-alvarez/null-ls.nvim'


    ------------------[[ prettier for format ]]-------------------------------------
    use 'MunifTanjim/prettier.nvim'


    ------------------[[ fidget ]]--------------------------------------------------
    use 'j-hui/fidget.nvim'


    ------------------[[ vim-illuminate ]]------------------------------------------
    use "RRethy/vim-illuminate"


    ------------------[[ hlargs ]]--------------------------------------------------
    use {
        'm-demare/hlargs.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }


    ------------------[[ git ]]-----------------------------------------------------
    use "tpope/vim-fugitive"


    ------------------[[ rust ]]----------------------------------------------------
    use 'simrat39/rust-tools.nvim'
    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

end)
