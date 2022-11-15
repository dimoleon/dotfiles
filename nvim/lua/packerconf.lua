local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    -- dependency
    use("nvim-lua/plenary.nvim")

    -- colorscheme
    -- use("bluz71/vim-nightfly-colors")
    use ("bluz71/vim-moonfly-colors")

    -- essentials
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")

    -- commenting 
    use("numToStr/Comment.nvim")

    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- icons 
    use("nvim-tree/nvim-web-devicons")

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- tabline
    use("romgrk/barbar.nvim")

    -- telescope 
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use("nvim-telescope/telescope.nvim")

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- snippets
    -- use("SirVer/ultisnips")
    -- use("quangnguyen30192/cmp-nvim-ultisnips")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- lsp and linting
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use({ "glepnir/lspsaga.nvim", branch = "main" })
    use("onsails/lspkind.nvim")

    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
    use("windwp/nvim-autopairs")

    -- Git 
    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")

    -- Latex 
    use("lervag/vimtex")

    -- Rust
    use("simrat39/rust-tools.nvim")

    if packer_bootstrap then
        require("packer").sync()
    end
end)
