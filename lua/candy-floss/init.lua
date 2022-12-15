local colors =
{
    red = "#ff5050",
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
    dark_grey = "#262626"
}

M = {}

M.preferred =
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
    Error = { fg = colors.red },
    Todo = { fg = colors.green }
}

M.minor =
{
    String = { fg = colors.purple },
    Character = { fg = colors.purple },
    Function = { fg = colors.pink },
    Struct = { fg = colors.pink },
    Method = { fg = colors.pink },
    MatchParen = { bg = colors.grey, underline = true, cterm = { underline = true } }
}

M.groups =
{
    ColorColumn  =  { bg = colors.black },
    Conceal =       { },
    Cursor =        { fg = colors.black, bg = colors.white },
    CursorColumn =  { bg = colors.black },
    CursorLine =    { bg = colors.black },
    Directory =     { fg = colors.cyan },
    DiffAdd =       { bg = colors.green },
    DiffChange =    { bg = colors.orange },
    DiffDelete =    { bg = colors.pink },
    DiffText =      { bg = colors.blue },
    EndOfBuffer =   { fg = colors.light_grey, bg = colors.black},
    TermCursor =    { fg = colors.black, bg = colors.white },
    TermCursorNC =  { fg = colors.black, bg = colors.white },
    ErrorMsg =      { fg = colors.light_pink },
    Folded =        { fg = colors.grey, bg = colors.black },
    FoldColumn =    { fg = colors.dark_grey, bg = colors.black },
    SignColumn =    { fg = colors.dark_grey, bg = colors.black },
    IncSearch =     { fg = "#ffffff", bg = colors.pink },
    Substitute =    { fg = colors.white },
    LineNr =        { fg = colors.grey, bg = colors.black },
    CursorLineNR =  { fg = colors.white },
    ModeMsg =       { fg = colors.white },
    MoreMsg =       { fg = colors.orange },
    NonText =       { fg = colors.grey },
    Normal =        { fg = colors.white, bg = colors.black},
    NormalFloat =   { fg = colors.white, bg = colors.black },
    NormalNC =      { fg = colors.white, bg = colors.black },
    Pmenu =         { fg = colors.white, bg = colors.dark_grey },
    PmenuSel =      { fg = colors.cyan, bg = colors.grey },
    PmenuSbar =     { fg = colors.pink, bg = colors.dark_grey },
    PmenuThumb =    { fg = colors.cyan, bg = colors.grey },
    Question =      { fg = colors.white },
    QuickFixLine  = { bg = colors.black },
    Search =        { fg = "#ffffff", bg = colors.pink },
    SpecialKey =    { fg = colors.dark_grey },
    StatusLine =    { fg = colors.black, bg = colors.black, cterm = { bold = true, reverse = true}, bold = true, reverse = true },
    StatusLineNC =  { fg = colors.black, bg = colors.black, cterm = { reverse = true}, reverse = true },
    TabLine =       { fg = colors.white, bg = colors.dark_grey },
    TabLineFill =   { fg = colors.white, bg = colors.dark_grey },
    TabLineSel =    { fg = colors.cyan, bg = colors.grey },
    Title =         { fg = colors.white, bg = colors.black },
    Visual =        { bg = colors.grey },
    VisualNC =      { bg = colors.grey },
    WarningMsg =    { fg = colors.black, bg = colors.orange },
    WildMenu =      { fg = colors.cyan, bg = colors.black },
    WinBar =        { bold = true, cterm = { bold = true, } },

    FloatBorder =   { fg = colors.black, bg = colors.black },
    VertSplit =     { fg = colors.dark_grey, bg = colors.black },
}

M.link_groups =
{
    WhiteSpace =    { link = "NonText" },
    MsgSeparator =  { link = "StatusLine" },
}

M.treesitter =
{
    TSFloat = M.preferred.Type
}

M.lsp =
{
    LspDiagnosticsDefaultError = { fg = "red" }
}

function M.setup()
    if vim.fn.exists("syntax_on")
    then
        vim.api.nvim_command("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "candy-floss"

    local categories = { M.preferred, M.minor, M.groups, M.link_groups, M.treesitter, M.lsp }

    for _, category in ipairs(categories)
    do
        for group, settings in pairs(category)
        do
            vim.api.nvim_set_hl(0, group, settings)
        end
    end
end

if (vim.g.colors_name ~= "candy-floss")
then
    M.setup()
    print("setting up")
end

return M
