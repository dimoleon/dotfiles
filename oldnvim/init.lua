require("core.options")

if vim.g.vscode then

else
    require("packerconf")
    require("core.keymaps")
    require("core.colorscheme")
    require("plugins.comment")
    require("plugins.nvim-tree")
    require("plugins.lualine")
    require("plugins.telescope")
    require("plugins.nvim-cmp")
    require("plugins.lsp.mason")
    require("plugins.lsp.lspsaga")
    require("plugins.lsp.lspconfig")
    require("plugins.autopairs")
    require("plugins.treesitter")
    require("plugins.gitsigns")
end

