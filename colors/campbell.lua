-- ~/.config/nvim/colors/campbell.lua
local vim = vim

vim.o.termguicolors = true
vim.o.background = "dark"

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "campbell"

-- ═══════════════════════════════════════════════════════════════
-- PALETTE
-- ═══════════════════════════════════════════════════════════════
-- bg           NONE      transparent
-- fg           #cccccc   default text
-- white        #f2f2f2   bright white
-- blue         #3b78ff   keywords, statements
-- cyan         #3a96dd   functions, specials, symlinks
-- magenta      #b4009e   types, headers
-- green        #13a10e   strings, numbers, executables
-- yellow       #c19c00   preprocessor, todo bg
-- red          #e74856   errors
-- gray         #767676   comments, line numbers
-- dark_blue    #012456   todo fg, selection fg
-- dark_navy    #1a1a2e   cursor line
-- dark_bg      #1a1a1a   statusline, pmenu bg
-- select_blue  #3a96dd   pmenu selection bg
-- visual       #1a2a4a   visual selection, search

-- ═══════════════════════════════════════════════════════════════
-- BASE
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Normal",      { fg = "#cccccc", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC",    { fg = "#cccccc", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#cccccc", bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn",  { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })

-- ═══════════════════════════════════════════════════════════════
-- UI
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LineNr",       { fg = "#767676", bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#f2f2f2", bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#1a1a2e" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#1a1a2e" })
vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#1a1a2e" })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#cccccc", bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#767676", bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#cccccc", bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#012456", bg = "#3a96dd" })
vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "#2a2a2a" })
vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "#505050" })
vim.api.nvim_set_hl(0, "Visual",       { bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "Search",       { bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "IncSearch",    { fg = "#012456", bg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "MatchParen",   { fg = "#012456", bg = "#c19c00", bold = true })
vim.api.nvim_set_hl(0, "Cursor",       { fg = "#1a1a1a", bg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#767676" })
vim.api.nvim_set_hl(0, "FloatBorder",  { fg = "#767676" })
vim.api.nvim_set_hl(0, "NonText",      { fg = "#505050" })
vim.api.nvim_set_hl(0, "Whitespace",   { fg = "#505050" })
vim.api.nvim_set_hl(0, "Folded",       { fg = "#767676", bg = "#1a1a1a", italic = true })
vim.api.nvim_set_hl(0, "FoldColumn",   { fg = "#767676", bg = "NONE" })
vim.api.nvim_set_hl(0, "Title",        { fg = "#3a96dd", bold = true })
vim.api.nvim_set_hl(0, "Directory",    { fg = "#3a96dd" })

-- ═══════════════════════════════════════════════════════════════
-- SYNTAX — FALLBACK VIM GROUPS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Comment",     { fg = "#767676", italic = true })
vim.api.nvim_set_hl(0, "String",      { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "Character",   { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "Number",      { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "Float",       { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "Boolean",     { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "Constant",    { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "Identifier",  { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "Function",    { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "Keyword",     { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Repeat",      { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Exception",   { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Statement",   { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Operator",    { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Label",       { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "Type",        { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "StorageClass",{ fg = "#b4009e" })
vim.api.nvim_set_hl(0, "Structure",   { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "Typedef",     { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "PreProc",     { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "Include",     { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "Define",      { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "Macro",       { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "PreCondit",   { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "Special",     { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "Delimiter",   { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "SpecialComment",{ fg = "#767676", italic = true })
vim.api.nvim_set_hl(0, "Underlined",  { fg = "#3a96dd", underline = true })
vim.api.nvim_set_hl(0, "Error",       { fg = "#e74856" })
vim.api.nvim_set_hl(0, "Todo",        { fg = "#012456", bg = "#c19c00", bold = true })

-- C-specific: library name inside #include <...>
vim.api.nvim_set_hl(0, "cIncluded",   { fg = "#13a10e" })

-- ═══════════════════════════════════════════════════════════════
-- TREESITTER
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@variable",              { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@variable.caller",       { fg = "#c19c00" })  -- pq in pq.push()
vim.api.nvim_set_hl(0, "@variable.builtin",      { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "@variable.parameter",    { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@variable.member", { fg = "#c19c00" })

vim.api.nvim_set_hl(0, "@type",                  { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@type.builtin",          { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@type.definition",       { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@type.qualifier",        { fg = "#3b78ff" })

vim.api.nvim_set_hl(0, "@keyword",               { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@keyword.conditional",   { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@keyword.repeat",        { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@keyword.return",        { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@keyword.operator",      { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@keyword.storage",       { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@storageclass",          { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@conditional",           { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@repeat",                { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@exception",             { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@label",                 { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@boolean",               { fg = "#f2f2f2" })

vim.api.nvim_set_hl(0, "@function",              { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@function.call",         { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@function.builtin",      { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@function.macro",        { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@method",                { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@method.call",           { fg = "#3a96dd" })

vim.api.nvim_set_hl(0, "@property",              { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@field",                 { fg = "#cccccc" })

vim.api.nvim_set_hl(0, "@number",                { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "@number.float",          { fg = "#13a10e" })

vim.api.nvim_set_hl(0, "@string",                { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "@string.regex",          { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@string.escape",         { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@string.special",        { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "@character",             { fg = "#13a10e" })

vim.api.nvim_set_hl(0, "@comment",               { fg = "#767676", italic = true })
vim.api.nvim_set_hl(0, "@comment.todo",          { fg = "#012456", bg = "#c19c00", bold = true })
vim.api.nvim_set_hl(0, "@comment.note",          { fg = "#3a96dd", italic = true })
vim.api.nvim_set_hl(0, "@comment.warning",       { fg = "#c19c00", italic = true })
vim.api.nvim_set_hl(0, "@comment.error",         { fg = "#e74856", italic = true })

vim.api.nvim_set_hl(0, "@operator",              { fg = "#3b78ff" })

vim.api.nvim_set_hl(0, "@punctuation",           { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@punctuation.bracket",   { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@punctuation.special",   { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@delimiter",             { fg = "#cccccc" })

vim.api.nvim_set_hl(0, "@namespace",             { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@module",                { fg = "#b4009e" })

vim.api.nvim_set_hl(0, "@constant",              { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "@constant.builtin",      { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "@constant.macro",        { fg = "#c19c00" })

vim.api.nvim_set_hl(0, "@preproc",               { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@include",               { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@macro",                 { fg = "#c19c00" })

vim.api.nvim_set_hl(0, "@tag",                   { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@tag.attribute",         { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@tag.delimiter",         { fg = "#767676" })

vim.api.nvim_set_hl(0, "@constructor",           { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@parameter",             { fg = "#cccccc" })

-- ═══════════════════════════════════════════════════════════════
-- LSP SEMANTIC TOKENS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@lsp.type.variable",     { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter",    { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@lsp.type.property",     { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@lsp.type.function",     { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@lsp.type.method",       { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@lsp.type.class",        { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.struct",       { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.enum",         { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember",   { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "@lsp.type.interface",    { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.type",         { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.keyword",      { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace",    { fg = "#b4009e" })
vim.api.nvim_set_hl(0, "@lsp.type.number",       { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "@lsp.type.string",       { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "@lsp.type.comment",      { fg = "#767676", italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.macro",        { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "@lsp.type.operator",     { fg = "#3b78ff" })
vim.api.nvim_set_hl(0, "@lsp.type.decorator",    { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter",{ fg = "#b4009e" })

-- Modifiers
vim.api.nvim_set_hl(0, "@lsp.mod.deprecated",    { strikethrough = true })
vim.api.nvim_set_hl(0, "@lsp.mod.readonly",      { fg = "#f2f2f2" })
vim.api.nvim_set_hl(0, "@lsp.mod.static",        { fg = "#f2f2f2" })

-- ═══════════════════════════════════════════════════════════════
-- DIAGNOSTICS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiagnosticError",            { fg = "#e74856" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",             { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "DiagnosticInfo",             { fg = "#3a96dd" })
vim.api.nvim_set_hl(0, "DiagnosticHint",             { fg = "#767676" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError",   { undercurl = true, sp = "#e74856" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = "#c19c00" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = "#3a96dd" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = "#767676" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#e74856", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { fg = "#c19c00", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { fg = "#3a96dd", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { fg = "#767676", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- GIT
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiffAdd",        { fg = "#13a10e", bg = "#0a1a0a" })
vim.api.nvim_set_hl(0, "DiffChange",     { fg = "#c19c00", bg = "#1a1500" })
vim.api.nvim_set_hl(0, "DiffDelete",     { fg = "#e74856", bg = "#1a0a0a" })
vim.api.nvim_set_hl(0, "DiffText",       { fg = "#f2f2f2", bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "GitSignsAdd",    { fg = "#13a10e" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#c19c00" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#e74856" })

-- ═══════════════════════════════════════════════════════════════
-- LSP REFERENCES
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LspReferenceText",  { bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "LspReferenceRead",  { bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#1a2a4a" })
vim.api.nvim_set_hl(0, "LspInlayHint",      { fg = "#505050", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- RAINBOW DELIMITERS (HiPhish/rainbow-delimiters.nvim)
-- Cycling through Campbell's accent colors
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "RainbowDelimiter1", { fg = "#3b78ff" })  -- blue
vim.api.nvim_set_hl(0, "RainbowDelimiter2", { fg = "#3a96dd" })  -- cyan
vim.api.nvim_set_hl(0, "RainbowDelimiter3", { fg = "#b4009e" })  -- magenta
vim.api.nvim_set_hl(0, "RainbowDelimiter4", { fg = "#c19c00" })  -- yellow
vim.api.nvim_set_hl(0, "RainbowDelimiter5", { fg = "#3b78ff" })  -- blue (cycle)
vim.api.nvim_set_hl(0, "RainbowDelimiter6", { fg = "#3a96dd" })  -- cyan (cycle)
vim.api.nvim_set_hl(0, "RainbowDelimiter7", { fg = "#b4009e" })  -- magenta (cycle)
