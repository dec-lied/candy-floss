local colors =
{
    red = "#ff5050",
    blue = "#78a9ff",
    cyan = "#82cfff",
    pink = "#ff7eb6",
    grey = "#393939",
    green = "#77dd77",
    white = "#d0d0d0",
    black = "#161616",
    purple = "#be97ff",
    orange = "#fac898",
    light_pink = "pink",
    other_blue = "#3ddbd9",
    light_grey = "#606060",
    dark_grey = "#262626"
}

M = {}

M.preferred =
{
    Comment = { fg = colors.light_grey },
    Constant = { fg = colors.cyan },
    Identifier = { fg = colors.blue },
    Statement = { fg = colors.purple },
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
    MatchParen = { bg = colors.grey, underline = true, cterm = { underline = true } },
    StorageClass = { fg = colors.blue },
}

M.groups =
{
    ColorColumn  =  { bg = colors.black },
    Conceal =       { },
    Cursor =        { fg = colors.black, bg = colors.white },
    CursorColumn =  { bg = colors.black },
    CursorLine =    { bg = colors.black },
    Directory =     { fg = colors.cyan },
    DiffAdd =       { fg = colors.green },
    DiffChange =    { fg = colors.orange },
    DiffDelete =    { fg = colors.pink },
    DiffText =      { fg = colors.blue },
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
    CursorLineNr =  { fg = colors.white },
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

    IndentBlanklineChar =   { fg = colors.grey, nocombine = true },
    IndentBlanklineSpaceChar = { fg = colors.grey, nocombine = true },
    IndentBlanklineContextChar = { fg = colors.blue, nocombine = true },
    IndentBlanklineContextStart = { fg = colors.grey, nocombine = true },
    IndentBlanklineSpaceCharBlankline = { fg = colors.grey, nocombine = true }
}

M.link_groups =
{
    WhiteSpace =    { link = "NonText" },
    MsgSeparator =  { link = "StatusLine" },

    NvimTreeFileNew = { link = "NvimTreeGitNew" },
    NvimTreeFileRenamed = { link = "NvimTreeGitRenamed" },
    NvimTreeFileMerge = { link = "NvimTreeGitMerge" },
    NvimTreeLineNr = { link = "LineNr" },
    NvimTreeFileDeleted = { link = "NvimTreeGitDeleted" },
    NvimTreeFileIgnored = { link = "NvimTreeGitIgnore" },
    NvimTreeGitIgnores = { link = "Comment" },
    NvimTreeNormalNC = { link = "NvimTreeNormal" },
    NvimTreeStatusLineNC = { link = "StatusLineNC" },
    NvimTreeStatusLine = { link = "StatusLine" },
    NvimTreeSignColumn = { link = "NvimTreeNormal" },
    NvimTreePopup = { link = "Normal" },
    NvimTreeVertSplit = { link = "VertSplit" },
    NvimTreeFileStaged = { link = "NvimTreeGitStaged" },
    NvimTreeOpenedFolderIcon = { link = "NvimTreeFolderIcon" },
    NvimTreeCursorColumn = { link = "CursorColumn" },
    NvimTreeClosedFolderIcon = { link = "NvimTreeFolderIcon" },
    NvimTreeCursorLine = { link = "CursorLine" },
    NvimTreeEndOfBuffer = { link = "EndOfBuffer" },
    NvimTreeCursorLineNr = { link = "CursorLineNr" },
    NvimTreeFileDirty = { link = "NvimTreeGitDirty" }
}

M.treesitter =
{
    ['@text'] = { fg = colors.white },
    ['@text.math'] = { fg = colors.purple },
    ['@parameter'] = { fg = colors.white }
}

M.lsp =
{
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.blue },
    DiagnosticInfo = { fg = colors.cyan },
    DiagnosticHint = { fg = colors.orange },

    DiagnosticUnderlineError = { underline = true, sp = colors.red, cterm = { underline = true } },
    DiagnosticUnderlineWarn = { underline = true, sp = colors.pink, cterm = { underline = true } },
    DiagnosticUnderlineInfo = { underline = true, sp = colors.cyan, cterm = { underline = true } },
    DiagnosticUnderlinHint = { underline = true, sp = colors.orange, cterm = { underline = true } },
}

M.nvim_tree =
{
    NvimTreeFolderIcon = { fg = colors.pink },
    NvimTreeRootFolder = { fg = colors.cyan },
    NvimTreeExecFile = { bold = true, fg = colors.purple },
    NvimTreeSpecialFile = { bold = true, underline = true, fg = colors.green },
    NvimTreeImageFile = { fg = colors.pink },
    NvimTreeOpenedFile = { bold = true, fg = colors.purple },
    NvimTreeWindowPicker = { bold = true,  fg = colors.white, bg = "#4493c8" },
    NvimTreeLiveFilterPrefix = { bold = true, fg = colors.cyan },
    NvimTreeLiveFilterValue = { bold = true },
    NvimTreeBookmark = { fg = colors.purple },
    NvimTreeIndentMarker = { fg = colors.grey },
    NvimTreeSymlink = { bold = true, fg = "#3ddbd9" },
    NvimTreeNormal = { fg = colors.white, bg = "#161616" },
    NvimTreeFolderName = { fg = "#78a9ff" },
    NvimTreeEmptyFolderName = { fg = colors.cyan },
    NvimTreeOpenedFolderName = { fg = colors.cyan },
    NvimTreeWinSeparator = { fg = "#161616", bg = "#161616" },
    NvimTreeFileIcon = { }
}

function M.setup()
    if vim.fn.exists("syntax_on")
    then
        vim.api.nvim_command("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "candy-floss"

    local categories = { M.preferred, M.minor, M.groups, M.treesitter, M.lsp, M.nvim_tree, M.link_groups }

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
end

return M
