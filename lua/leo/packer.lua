-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- colorschema
    use({
        'daltonmenezes/aura-theme',
        rtp = 'packages/neovim',
        config = function()
            vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
        end
    })

    use { "ellisonleao/gruvbox.nvim" }
    use { "dracula/vim" }

    -- GIT
    --use("tpope/vim-fugitive")
    use("lewis6991/gitsigns.nvim")

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('karb94/neoscroll.nvim')
    use('nvim-lualine/lualine.nvim')
    use({ 'akinsho/bufferline.nvim', tag = "*" })
    use({ 'mg979/vim-visual-multi', branch = 'master' })
    use("lukas-reineke/indent-blankline.nvim")

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use({ 'phaazon/hop.nvim', branch = 'v2' })

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-buffer' },   -- Optional
            { 'hrsh7th/cmp-path' },     -- Optional
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { "rafamadriz/friendly-snippets" },

            -- Nice icons
            { 'onsails/lspkind.nvim' } -- Optional
        }
    }

    -- NVIM TREE
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
end)
