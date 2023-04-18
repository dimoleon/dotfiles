local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end

-- local cmp_nvim_ultisnips_status, cmp_nvim_ultisnips = pcall(require, "cmp_nvim_ultisnips") -- if not cmp_nvim_ultisnips_status then
--     return
-- end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
    return
end

-- friendly snippets
-- require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp"},
        { name = "buffer" },
        { name = "path" },
    }),
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
        }),
    },
})

-- vim.g.UltiSnipsSnippetDirectories = "~/dotfiles/nvim/UltiSnips"
-- vim.g.UltiSnipsExpandTrigger = '<tab>'
-- vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
-- vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
