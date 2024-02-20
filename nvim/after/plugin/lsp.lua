local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- lsp.skip_server_setup({'clangd'})
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lspconfig').clangd.setup({
    cmd = {
        "clangd",
        "--log=verbose",
        -- "--compile-commands-dir=./build",
        "--clang-tidy",
        "--query-driver=/usr/bin/arm-*",
    },
})


lsp.setup()

-- Make sure you setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }
})
