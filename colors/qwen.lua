-- ~/.config/nvim/colors/qwen.lua
-- Based on One Dark Pro (Qwen AI) with sharpened colors and correct background
local vim = vim

vim.o.termguicolors = true
vim.o.background = "dark"

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "qwen"

-- ═══════════════════════════════════════════════════════════════
-- PALETTE (sharpened One Dark Pro)
-- ═══════════════════════════════════════════════════════════════
-- bg           #1e1e2e   dark navy/indigo (from Qwen's actual code block bg)
-- fg           #b5bece   plain text, punctuation
-- comment      #606878   comments
-- red          #f1616d   properties, errors
-- orange       #e19d5c   numbers, booleans, constants
-- yellow       #d9b573   types, variables
-- green        #9dd276   strings, includes
-- cyan         #4bc2d1   escape sequences, regex
-- blue         #50b0ff   functions, methods
-- purple       #d271ee   keywords, operators

-- ═══════════════════════════════════════════════════════════════
-- BASE
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Normal",      { fg = "#b5bece", bg = "#08080f" })
vim.api.nvim_set_hl(0, "NormalNC",    { fg = "#b5bece", bg = "#08080f" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#b5bece", bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn",  { fg = "#b5bece", bg = "#08080f" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#313244", bg = "#08080f" })

-- ═══════════════════════════════════════════════════════════════
-- UI
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LineNr",       { fg = "#45475a", bg = "#08080f" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#b5bece", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#b5bece", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#606878", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#b5bece", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#08080f", bg = "#50b0ff" })
vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "#313244" })
vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "#606878" })
vim.api.nvim_set_hl(0, "Visual",       { bg = "#363653" })
vim.api.nvim_set_hl(0, "Search",       { fg = "#08080f", bg = "#d9b573" })
vim.api.nvim_set_hl(0, "IncSearch",    { fg = "#08080f", bg = "#d9b573" })
vim.api.nvim_set_hl(0, "MatchParen",   { fg = "#d9b573", bg = "#363653", bold = true })
vim.api.nvim_set_hl(0, "Cursor",       { fg = "#08080f", bg = "#b5bece" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#313244" })
vim.api.nvim_set_hl(0, "FloatBorder",  { fg = "#606878", bg = "NONE" })
vim.api.nvim_set_hl(0, "NonText",      { fg = "#313244" })
vim.api.nvim_set_hl(0, "Whitespace",   { fg = "#313244" })
vim.api.nvim_set_hl(0, "Folded",       { fg = "#606878", bg = "#1e1e2e", italic = true })
vim.api.nvim_set_hl(0, "FoldColumn",   { fg = "#45475a", bg = "#08080f" })
vim.api.nvim_set_hl(0, "Title",        { fg = "#50b0ff", bold = true })
vim.api.nvim_set_hl(0, "Directory",    { fg = "#50b0ff" })

-- ═══════════════════════════════════════════════════════════════
-- SYNTAX — FALLBACK VIM GROUPS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Comment",      { fg = "#606878", italic = true })
vim.api.nvim_set_hl(0, "String",       { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "Character",    { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "Number",       { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "Float",        { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "Boolean",      { fg = "#e19d5c" })
vim.api.nvim_set_hl(0, "Constant",     { fg = "#e19d5c" })
vim.api.nvim_set_hl(0, "Identifier",   { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "Function",     { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "Keyword",      { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Conditional",  { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Repeat",       { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Exception",    { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Statement",    { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Operator",     { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Label",        { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Type",         { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Structure",    { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "Typedef",      { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "PreProc",      { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Include",      { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Define",       { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Macro",        { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "PreCondit",    { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "Special",      { fg = "#4bc2d1" })
vim.api.nvim_set_hl(0, "SpecialChar",  { fg = "#4bc2d1" })
vim.api.nvim_set_hl(0, "Delimiter",    { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "Underlined",   { fg = "#50b0ff", underline = true })
vim.api.nvim_set_hl(0, "Error",        { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "Todo",         { fg = "#08080f", bg = "#d9b573", bold = true })
vim.api.nvim_set_hl(0, "cIncluded",    { fg = "#9dd276" })

-- ═══════════════════════════════════════════════════════════════
-- TREESITTER
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@variable",              { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@variable.builtin",      { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@variable.parameter",    { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@variable.member",       { fg = "#d9b573" })

vim.api.nvim_set_hl(0, "@type",                  { fg = "#b5bece", italic = true })
vim.api.nvim_set_hl(0, "@type.builtin",          { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@type.definition",       { fg = "#b5bece", italic = true })
vim.api.nvim_set_hl(0, "@type.qualifier",        { fg = "#d271ee" })

vim.api.nvim_set_hl(0, "@keyword",               { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@keyword.conditional",   { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@keyword.repeat",        { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@keyword.return",        { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@keyword.operator",      { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@keyword.storage",       { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@storageclass",          { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@conditional",           { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@repeat",                { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@exception",             { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@label",                 { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@boolean",               { fg = "#e19d5c" })

vim.api.nvim_set_hl(0, "@function",              { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@function.call",         { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@function.builtin",      { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@function.macro",        { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@method",                { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@method.call",           { fg = "#50b0ff" })

vim.api.nvim_set_hl(0, "@property",              { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@field",                 { fg = "#f1616d" })

vim.api.nvim_set_hl(0, "@number",                { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@number.float",          { fg = "#f1616d" })

vim.api.nvim_set_hl(0, "@string",                { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "@string.regex",          { fg = "#4bc2d1" })
vim.api.nvim_set_hl(0, "@string.escape",         { fg = "#4bc2d1" })
vim.api.nvim_set_hl(0, "@string.special",        { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "@character",             { fg = "#9dd276" })

vim.api.nvim_set_hl(0, "@comment",               { fg = "#606878", italic = true })
vim.api.nvim_set_hl(0, "@comment.todo",          { fg = "#08080f", bg = "#d9b573", bold = true })
vim.api.nvim_set_hl(0, "@comment.note",          { fg = "#50b0ff", italic = true })
vim.api.nvim_set_hl(0, "@comment.warning",       { fg = "#e19d5c", italic = true })
vim.api.nvim_set_hl(0, "@comment.error",         { fg = "#f1616d", italic = true, bold = true })

vim.api.nvim_set_hl(0, "@operator",              { fg = "#d271ee" })

vim.api.nvim_set_hl(0, "@punctuation",           { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@punctuation.bracket",   { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@punctuation.special",   { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@delimiter",             { fg = "#b5bece" })

vim.api.nvim_set_hl(0, "@namespace",             { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@module",                { fg = "#b5bece" })

vim.api.nvim_set_hl(0, "@constant",              { fg = "#e19d5c" })
vim.api.nvim_set_hl(0, "@constant.builtin",      { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@constant.macro",        { fg = "#d9b573" })

vim.api.nvim_set_hl(0, "@preproc",               { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@include",               { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@macro",                 { fg = "#d271ee" })

vim.api.nvim_set_hl(0, "@tag",                   { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@tag.attribute",         { fg = "#e19d5c" })
vim.api.nvim_set_hl(0, "@tag.delimiter",         { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@constructor",           { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@parameter",             { fg = "#b5bece" })

-- ═══════════════════════════════════════════════════════════════
-- LSP SEMANTIC TOKENS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@lsp.type.variable",      { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter",     { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@lsp.type.property",      { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@lsp.type.function",      { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@lsp.type.method",        { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@lsp.type.class",         { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.type.struct",        { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.type.enum",          { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember",    { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@lsp.type.interface",     { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.type.type",          { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.type.keyword",       { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace",     { fg = "#b5bece" })
vim.api.nvim_set_hl(0, "@lsp.type.number",        { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "@lsp.type.string",        { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "@lsp.type.comment",       { fg = "#606878", italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.macro",         { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@lsp.type.operator",      { fg = "#d271ee" })
vim.api.nvim_set_hl(0, "@lsp.type.decorator",     { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "@lsp.mod.deprecated",     { strikethrough = true })
vim.api.nvim_set_hl(0, "@lsp.mod.readonly",       { fg = "#e19d5c" })
vim.api.nvim_set_hl(0, "@lsp.mod.static",         { fg = "#e19d5c" })

-- ═══════════════════════════════════════════════════════════════
-- DIAGNOSTICS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiagnosticError",            { fg = "#f1616d" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",             { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "DiagnosticInfo",             { fg = "#50b0ff" })
vim.api.nvim_set_hl(0, "DiagnosticHint",             { fg = "#4bc2d1" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError",   { undercurl = true, sp = "#f1616d" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = "#d9b573" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = "#50b0ff" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = "#4bc2d1" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#f1616d", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { fg = "#d9b573", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { fg = "#50b0ff", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { fg = "#4bc2d1", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- GIT
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiffAdd",        { fg = "#9dd276", bg = "#1e2b1e" })
vim.api.nvim_set_hl(0, "DiffChange",     { fg = "#d9b573", bg = "#2b2b1e" })
vim.api.nvim_set_hl(0, "DiffDelete",     { fg = "#f1616d", bg = "#2b1e1e" })
vim.api.nvim_set_hl(0, "DiffText",       { fg = "#b5bece", bg = "#363653" })
vim.api.nvim_set_hl(0, "GitSignsAdd",    { fg = "#9dd276" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#d9b573" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#f1616d" })

-- ═══════════════════════════════════════════════════════════════
-- LSP REFERENCES
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LspReferenceText",  { bg = "#363653" })
vim.api.nvim_set_hl(0, "LspReferenceRead",  { bg = "#363653" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#363653" })
vim.api.nvim_set_hl(0, "LspInlayHint",      { fg = "#606878", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- RAINBOW DELIMITERS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "RainbowDelimiter1", { fg = "#f1616d" })  -- red
vim.api.nvim_set_hl(0, "RainbowDelimiter2", { fg = "#d9b573" })  -- yellow
vim.api.nvim_set_hl(0, "RainbowDelimiter3", { fg = "#9dd276" })  -- green
vim.api.nvim_set_hl(0, "RainbowDelimiter4", { fg = "#4bc2d1" })  -- cyan
vim.api.nvim_set_hl(0, "RainbowDelimiter5", { fg = "#50b0ff" })  -- blue
vim.api.nvim_set_hl(0, "RainbowDelimiter6", { fg = "#d271ee" })  -- purple
vim.api.nvim_set_hl(0, "RainbowDelimiter7", { fg = "#f1616d" })  -- red (cycle)
