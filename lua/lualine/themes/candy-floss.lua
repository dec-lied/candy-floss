local colors =
{
    red = "#ff5050",
    blue = "#78a9ff",
    pink = "#ff7eb6",
    green = "#77dd77",
    white = "#d0d0d0",
    purple = "#be97ff",
    orange = "#fac898",
}

local candy_floss = {}

candy_floss.lualine_theme =
{
    normal =
    {
        a = { bg = "#0e0e0e", fg = colors.white, gui = 'bold' },
        b = { bg = "#101010", fg = colors.purple },
        c = { bg = "#121212", fg = colors.blue }
    },
    insert =
    {
        a = { bg = "#0e0e0e", fg = colors.pink, gui = 'bold' },
        b = { bg = "#101010", fg = colors.purple },
        c = { bg = "#121212", fg = colors.blue }
    },
    command =
    {
        a = { bg = "#0e0e0e", fg = colors.orange, gui = 'bold' },
        b = { bg = "#101010", fg = colors.purple },
        c = { bg = "#121212", fg = colors.blue }
    },
    visual =
    {
        a = { bg = "#0e0e0e", fg = colors.green, gui = 'bold' },
        b = { bg = "#101010", fg = colors.purple },
        c = { bg = "#121212", fg = colors.blue }
    }
}

return candy_floss
