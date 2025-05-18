require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
    group_empty = true,
    },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
