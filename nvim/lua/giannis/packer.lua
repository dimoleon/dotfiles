-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'akinsho/bufferline.nvim', tag = "*", 
    requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} } 
  }

  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'nvim-tree/nvim-web-devicons'
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
  }

  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'


  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  
  use 'echasnovski/mini.pairs' 

  use { 'folke/which-key.nvim', 
    config = function()
      require('which-key').setup({
        delay = 1000,
      })
    end,
  }

  use 'lervag/vimtex'
end)
