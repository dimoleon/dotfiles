require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { 'lua_ls', 'pyright', 'julials', 'clangd' }
})

-- vim.lsp.enable('lua_ls')
