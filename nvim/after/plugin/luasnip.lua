require("luasnip.loaders.from_vscode").lazy_load()

require("luasnip").config.set_config({
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
})
