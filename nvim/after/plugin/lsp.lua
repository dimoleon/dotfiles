require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { 'lua_ls', 'pyright', 'julials', 'clangd' },
    automatic_installation = true,
    automatic_enable = false
})

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})


-- nvim-cmp basic setup (no snippets)
local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    },
})

-- LSP setup
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- lua lsp 
vim.lsp.enable('lua_ls')
-- no idea what the hell is going on, so just gonna wait to get a tad more stable api

-- Python: Pyright
lspconfig.pyright.setup({
    capabilities = capabilities,
})

-- Julia: LanguageServer.jl
-- lspconfig.julials.setup({
--     capabilities = capabilities,
--     on_new_config = function(new_config,new_root_dir)
--       server_path = "/path/to/directory/containing/LanguageServer.jl/src"
--       cmd = {
--         "julia",
--         "--project="..server_path,
--         "--startup-file=no",
--         "--history-file=no",
--         "-e", [[
--           using Pkg
--           Pkg.instantiate()
--           using LanguageServer
--           depot_path = get(ENV, "JULIA_DEPOT_PATH", "")
--           project_path = let
--               dirname(something(
--                   ## 1. Finds an explicitly set project (JULIA_PROJECT)
--                   Base.load_path_expand((
--                       p = get(ENV, "JULIA_PROJECT", nothing);
--                       p === nothing ? nothing : isempty(p) ? nothing : p
--                   )),
--                   ## 2. Look for a Project.toml file in the current working directory,
--                   ##    or parent directories, with $HOME as an upper boundary
--                   Base.current_project(),
--                   ## 3. First entry in the load path
--                   get(Base.load_path(), 1, nothing),
--                   ## 4. Fallback to default global environment,
--                   ##    this is more or less unreachable
--                   Base.load_path_expand("@v#.#"),
--               ))
--           end
--           @info "Running language server" VERSION pwd() project_path depot_path
--           server = LanguageServer.LanguageServerInstance(stdin, stdout, project_path, depot_path)
--           server.runlinter = true
--           run(server)
--         \]\]
--     };
--       new_config.cmd = cmd
-- })


