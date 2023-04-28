local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers({'tsserver', 'eslint'})

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lspconfig').clangd.setup({
    cmd = {
        "clangd",
        "--query-driver=/usr/bin/arm-*",
        "--query-driver=/usr/bin/c++",
    },
    -- filetypes = { "c", "cpp" }, 
})

lsp.setup()
