require('settings')
require('packerconfig')
require('mappings')
require('colorschemes.tokyonight')
require('nvim-tree-config')
require('treesitter')
require('autopairs')

require('lspconfig.langservers')
require('lspconfig.nvim-cmp')

require('lualine').setup {
    options = {
        theme = 'tokyonight'
    }
}



