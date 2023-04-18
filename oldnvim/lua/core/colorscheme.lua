vim.g.moonflyTransparent = true

-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme moonfly")
if not status then
    print("Colorscheme not found.")
    return
end

