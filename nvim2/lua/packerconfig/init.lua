return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'    --plugin manager
    use 'folke/tokyonight.nvim'     --tokyonight colorscheme
    use 'kyazdani42/nvim-web-devicons' --nerd icons
    use 'kyazdani42/nvim-tree.lua'  --nerd tree
    use 'rcarriga/nvim-notify'      --notification manager
    use 'nvim-lualine/lualine.nvim' --statusline
    use 'romgrk/barbar.nvim'        --buffers tab bar
    use 'windwp/nvim-autopairs'     --autopairs 
    
    use 'neovim/nvim-lspconfig'     --lsp support
    use 'hrsh7th/nvim-cmp'          --autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'      --lsp source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'  --snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'          --snippets plugin

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}      --treesitter 
    use 'nvim-treesitter/nvim-treesitter-refactor'                  --bulk rename functions/variables
    use 'lukas-reineke/indent-blankline.nvim'                       --indenting highlighting

    use {
        'nvim-telescope/telescope.nvim',                            --telescope 
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzy-native.nvim', run = 'make' } --telescope fzf source

end)


