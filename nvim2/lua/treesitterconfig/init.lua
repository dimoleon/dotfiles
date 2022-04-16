
-- Treesitter configuration -- 
require'nvim-treesitter.configs'.setup {

    ensure_installed = { "c", "cpp", "latex", "lua", "python", "markdown" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn", 
            scope_incremental = "grc", 
            node_decremental = "grm", 
        },
    },

--    indent = {
--        enable = true,
--    },

    refactor = {
        hightlight_definitions = { enable = true },

        smart_rename = {
            enable = true, 
            keymaps = {
                smart_rename = "grr",
            },
        },
    },
}

-- Folding -- 
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"


