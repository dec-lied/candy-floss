local colors =
{
    blue = "#78a9ff",
    cyan = "#82cfff",
    other_blue = "#3ddbd9",
    pink = "#ff7eb6",
    grey = "#393939",
    green = "#77dd77",
    white = "#d0d0d0",
    black = "#161616",
    purple = "#be97ff",
    orange = "#fac898",
    light_pink = "pink",
    light_grey = "#606060",
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
    Todo = { fg = colors.green }
}

local minor =
{
    String = { fg = colors.purple },
    Character = { fg = colors.purple },
    Function = { fg = colors.pink }
}

local groups =
{
    SpecialKey =    { fg = colors.dark_grey },
    EndOfBuffer =   { fg = colors.white, bg = colors.black},
    TermCursor =    { fg = colors.black, bg = colors.white },
    TermCursorNC =  { fg = colors.black, bg = colors.white },
    NonText =       { fg = colors.grey },
    Directory =     { fg = colors.cyan },
    ErrorMsg =      { fg = colors.light_pink },
    IncSearch =     { fg = "#ffffff", bg = colors.pink },
    Search =        { fg = "#ffffff", bg = colors.pink },
    CurSearch =     { cleared = true },
    MoreMsg =       { fg = colors.orange },
    ModeMsg =       { fg = colors.white },
    LineNr =        { fg = colors.grey, bg = colors.black },
    CursorLineNR =  { fg = colors.white },
    Question =      { fg = colors.white },
    StatusLine =    { cterm = { bold = true, reverse = true}, bold = true, reverse = true },
    VertSplit =     { fg = colors.grey, bg = colors.black },
    Title =         { fg = colors.white, bg = colors.black },
    Visual =        { bg = colors.grey },
    VisualNC =      { bg = colors.grey },
    WarningMsg =    { bg = colors.orange },
    WildMenu =      { fg = colors.cyan, bg = colors.black },
    Folded =        { fg = colors.grey, bg = colors.black },
    FoldedColumn =  { fg = colors.grey, bg = colors.black },
    DiffAdd =       { bg = colors.green },
    DiffChange =    { bg = colors.orange },
    DiffDelete =    { bg = colors.pink },
    DiffText =      { bg = colors.blue },
    SignColumn =    { fg = colors.dark_grey, bg = colors.black },
    Pmenu =         { fg = colors.white, bg = colors.dark_grey },
    PmenuSel =      { fg = colors.cyan, bg = colors.grey },
    PmenuSbar =     { fg = colors.white, bg = colors.dark_grey },
    PmenuThumb =    { fg = colors.cyan, bg = colors.grey },
    TabLine =       { fg = colors.white, bg = colors.dark_grey },
    TabLineSel =    { fg = colors.cyan, bg = colors.grey },
    TabLineFill =   { fg = colors.white, bg = colors.dark_grey },
    CursorColumn =  { bg = colors.black },
    CursorLine =    { bg = colors.black },
    ColorColumn  =  { bg = colors.black },
    QuickFixLine  = { bg = colors.black },
    NormalNC =      { fg = colors.white, bg = colors.black },
    NormalFloat =   { fg = colors.white, bg = colors.black },
    MsgArea =       { cleared = true },
    FloatBorder =   { fg = colors.black, bg = colors.black },
    WinBar =        { bold = true, cterm = { bold = true, } },
    Cursor =        { fg = colors.black, bg = colors.white },
    Normal =        { fg = colors.white, bg = colors.black},
    Substitute =    { fg = colors.white },
    Error =         { fg = colors.white, bg = colors.cyan },
}

local link_groups =
{
    WhiteSpace =    { link = groups.NonText },
    MsgSeparator =  { link = groups.StatusLine },
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
    vim.g.colors_name = "candy-floss"

    local categories = { preferred, minor, groups, link_groups, treesitter, lsp }

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
