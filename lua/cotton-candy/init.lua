local colors =
{
    blue = "#78a9ff",
    cyan = "#82cfff",
    pink = "#ff7eb6",
    grey = "#393939",
    white = "#d0d0d0",
    black = "#161616",
    purple = "#be97ff",
    orange = "#fac898",
    light_pink = "pink",
    light_grey = "#606060"
}


local preferred =
{
    Comment = { fg = colors.light_grey },
    Constant = { fg = colors.cyan },
    Identifier = { fg = colors.blue },
    Statement = { fg = colors.blue },
    PreProc = { fg = colors.pink },
    Type = { fg = colors.orange },
    Special = { fg = colors.light_pink },
    Underlined = { fg = colors.purple },
    Ignore = { fg = colors.pink },
    Error = { fg = colors.pink },
    Todo = { fg = colors.cyan }
}

local minor =
{
    String = { fg = colors.purple },
    Character = { fg = colors.purple },
    Function = { fg = colors.pink }
}

local groups =
{
    Normal = { fg = colors.white, bg = colors.black},
    EndOfBuffer = { fg = colors.white, bg = colors.black},
}

local treesitter =
{
    TSFloat = preferred.Type
}

local lsp =
{
    LspDiagnosticsDefaultError = { fg = "red" }
}

local function setup()
    if vim.fn.exists("syntax_on")
    then
        vim.api.nvim_command("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "cotton-candy"

    local categories = { preferred, minor, groups, treesitter, lsp }

    for _, category in ipairs(categories)
    do
        for group, settings in pairs(category)
        do
            vim.api.nvim_set_hl(0, group, settings)
        end
    end

    print(categories)
end

return { setup = setup }
