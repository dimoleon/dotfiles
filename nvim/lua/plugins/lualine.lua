local status, lualine = pcall(require, "lualine")
if not status then
    return
end

-- local lualine_nightfly = require("lualine.themes.nightfly")
local lualine_moonfly = require("lualine.themes.moonfly")

local new_colors = {
    blue = "#65D1FF",
    green = "1E4620",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#000000",
    red = "#F94449",
}

lualine_moonfly.normal.a.bg = new_colors.blue
lualine_moonfly.insert.a.bg = new_colors.red
lualine_moonfly.visual.a.bg = new_colors.violet
lualine_moonfly.command = {
    a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
    }
}


lualine.setup({
    options = {
        -- theme = lualine_nightfly
        theme = lualine_moonfly
    }
})
