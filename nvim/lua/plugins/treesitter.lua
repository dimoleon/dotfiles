local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
    highlight = {
        enable = true
    },
    ident = { enable = true },
    ensure_installed = {
        "c",
        "cpp",
        "java",
        "lua",
        "python",
        "markdown",
        "bash",
        "vim",
        "gitignore",
    },
    autoinstall = true
})
