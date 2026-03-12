-- ~/.config/nvim/colors/dawn.lua
-- Rosé Pine Dawn — warm parchment background, exact colors from reference image
local vim = vim

vim.o.termguicolors = true
vim.o.background = "light"

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "dawn"

-- ═══════════════════════════════════════════════════════════════
-- PALETTE
-- ═══════════════════════════════════════════════════════════════
-- base         #fbf3ea   warm parchment (main bg, from image)
-- surface      #efe8df   slightly darker warm (code block, floats, pmenu)
-- overlay      #e8e0d6   cursor line, selections
-- muted        #9893a5   muted lavender-gray (comments)
-- subtle       #797593   secondary text
-- text         #46406f   deep purple-gray (main text)
-- love         #a54460   deep rose (errors, properties)
-- gold         #d77c00   warm gold (numbers, constants)
-- rose         #c5605b   soft rose (types)
-- pine         #0b5978   deep teal (functions, strings)
-- foam         #3a8592   muted cyan (namespaces, escapes)
-- iris         #7d639b   soft purple (keywords, operators)

-- ═══════════════════════════════════════════════════════════════
-- BASE
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Normal",      { fg = "#46406f", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "NormalNC",    { fg = "#46406f", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#46406f", bg = "#efe8df" })
vim.api.nvim_set_hl(0, "SignColumn",  { fg = "#9893a5", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#ddd5cc", bg = "#fbf3ea" })

-- ═══════════════════════════════════════════════════════════════
-- UI
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LineNr",       { fg = "#ccc4bb", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#7d639b", bg = "#efe8df" })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#f2ebe2" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#f2ebe2" })
vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#f2ebe2" })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = "#46406f", bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#9893a5", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#46406f", bg = "#efe8df" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#fbf3ea", bg = "#0b5978" })
vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "#ccc4bb" })
vim.api.nvim_set_hl(0, "Visual",       { bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "Search",       { fg = "#46406f", bg = "#f0ddb0" })
vim.api.nvim_set_hl(0, "IncSearch",    { fg = "#fbf3ea", bg = "#d77c00" })
vim.api.nvim_set_hl(0, "MatchParen",   { fg = "#a54460", bg = "#e8e0d6", bold = true })
vim.api.nvim_set_hl(0, "Cursor",       { fg = "#fbf3ea", bg = "#2d2850" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ddd5cc" })
vim.api.nvim_set_hl(0, "FloatBorder",  { fg = "#ccc4bb", bg = "#efe8df" })
vim.api.nvim_set_hl(0, "NonText",      { fg = "#ddd5cc" })
vim.api.nvim_set_hl(0, "Whitespace",   { fg = "#ddd5cc" })
vim.api.nvim_set_hl(0, "Folded",       { fg = "#9893a5", bg = "#efe8df", italic = true })
vim.api.nvim_set_hl(0, "FoldColumn",   { fg = "#ccc4bb", bg = "#fbf3ea" })
vim.api.nvim_set_hl(0, "Title",        { fg = "#0b5978", bold = true })
vim.api.nvim_set_hl(0, "Directory",    { fg = "#0b5978" })

-- ═══════════════════════════════════════════════════════════════
-- SYNTAX — FALLBACK VIM GROUPS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "Comment",      { fg = "#9893a5", italic = true })
vim.api.nvim_set_hl(0, "String",       { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "Character",    { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "Number",       { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "Float",        { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "Boolean",      { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "Constant",     { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "Identifier",   { fg = "#46406f" })
vim.api.nvim_set_hl(0, "Function",     { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "Keyword",      { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Conditional",  { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Repeat",       { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Exception",    { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Statement",    { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Operator",     { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Label",        { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Type",         { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Structure",    { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "Typedef",      { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "PreProc",      { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Include",      { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Define",       { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Macro",        { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "PreCondit",    { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "Special",      { fg = "#3a8592" })
vim.api.nvim_set_hl(0, "SpecialChar",  { fg = "#3a8592" })
vim.api.nvim_set_hl(0, "Delimiter",    { fg = "#46406f" })
vim.api.nvim_set_hl(0, "Underlined",   { fg = "#0b5978", underline = true })
vim.api.nvim_set_hl(0, "Error",        { fg = "#a54460" })
vim.api.nvim_set_hl(0, "Todo",         { fg = "#fbf3ea", bg = "#7d639b", bold = true })
vim.api.nvim_set_hl(0, "cIncluded",    { fg = "#0b5978" })

-- ═══════════════════════════════════════════════════════════════
-- TREESITTER
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@variable",              { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@variable.builtin",      { fg = "#a54460" })
vim.api.nvim_set_hl(0, "@variable.parameter",    { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@variable.member",       { fg = "#c5605b" })

vim.api.nvim_set_hl(0, "@type",                  { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@type.builtin",          { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@type.definition",       { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@type.qualifier",        { fg = "#7d639b" })

vim.api.nvim_set_hl(0, "@keyword",               { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@keyword.conditional",   { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@keyword.repeat",        { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@keyword.return",        { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@keyword.operator",      { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@keyword.storage",       { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@storageclass",          { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@conditional",           { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@repeat",                { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@exception",             { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@label",                 { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@boolean",               { fg = "#d77c00" })

vim.api.nvim_set_hl(0, "@function",              { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@function.call",         { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@function.builtin",      { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@function.macro",        { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@method",                { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@method.call",           { fg = "#0b5978" })

vim.api.nvim_set_hl(0, "@property",              { fg = "#a54460" })
vim.api.nvim_set_hl(0, "@field",                 { fg = "#a54460" })

vim.api.nvim_set_hl(0, "@number",                { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@number.float",          { fg = "#d77c00" })

vim.api.nvim_set_hl(0, "@string",                { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@string.regex",          { fg = "#3a8592" })
vim.api.nvim_set_hl(0, "@string.escape",         { fg = "#3a8592" })
vim.api.nvim_set_hl(0, "@string.special",        { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@character",             { fg = "#0b5978" })

vim.api.nvim_set_hl(0, "@comment",               { fg = "#9893a5", italic = true })
vim.api.nvim_set_hl(0, "@comment.todo",          { fg = "#fbf3ea", bg = "#7d639b", bold = true })
vim.api.nvim_set_hl(0, "@comment.note",          { fg = "#0b5978", italic = true })
vim.api.nvim_set_hl(0, "@comment.warning",       { fg = "#d77c00", italic = true })
vim.api.nvim_set_hl(0, "@comment.error",         { fg = "#a54460", italic = true, bold = true })

vim.api.nvim_set_hl(0, "@operator",              { fg = "#7d639b" })

vim.api.nvim_set_hl(0, "@punctuation",           { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@punctuation.bracket",   { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@punctuation.special",   { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@delimiter",             { fg = "#46406f" })

vim.api.nvim_set_hl(0, "@namespace",             { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@module",                { fg = "#46406f" })

vim.api.nvim_set_hl(0, "@constant",              { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@constant.builtin",      { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@constant.macro",        { fg = "#c5605b" })

vim.api.nvim_set_hl(0, "@preproc",               { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@include",               { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@macro",                 { fg = "#7d639b" })

vim.api.nvim_set_hl(0, "@tag",                   { fg = "#a54460" })
vim.api.nvim_set_hl(0, "@tag.attribute",         { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@tag.delimiter",         { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "@constructor",           { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@parameter",             { fg = "#46406f" })

-- ═══════════════════════════════════════════════════════════════
-- LSP SEMANTIC TOKENS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "@lsp.type.variable",      { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter",     { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@lsp.type.property",      { fg = "#a54460" })
vim.api.nvim_set_hl(0, "@lsp.type.function",      { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@lsp.type.method",        { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@lsp.type.class",         { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.type.struct",        { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.type.enum",          { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember",    { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@lsp.type.interface",     { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.type.type",          { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.type.keyword",       { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace",     { fg = "#46406f" })
vim.api.nvim_set_hl(0, "@lsp.type.number",        { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@lsp.type.string",        { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@lsp.type.comment",       { fg = "#9893a5", italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.macro",         { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@lsp.type.operator",      { fg = "#7d639b" })
vim.api.nvim_set_hl(0, "@lsp.type.decorator",     { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { fg = "#c5605b" })
vim.api.nvim_set_hl(0, "@lsp.mod.deprecated",     { strikethrough = true })
vim.api.nvim_set_hl(0, "@lsp.mod.readonly",       { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "@lsp.mod.static",         { fg = "#d77c00" })

-- ═══════════════════════════════════════════════════════════════
-- DIAGNOSTICS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiagnosticError",            { fg = "#a54460" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",             { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "DiagnosticInfo",             { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "DiagnosticHint",             { fg = "#3a8592" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError",   { undercurl = true, sp = "#a54460" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = "#d77c00" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = "#0b5978" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = "#3a8592" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#a54460", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { fg = "#d77c00", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { fg = "#0b5978", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { fg = "#3a8592", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- GIT
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "DiffAdd",        { fg = "#0b5978", bg = "#d0e4ea" })
vim.api.nvim_set_hl(0, "DiffChange",     { fg = "#d77c00", bg = "#f0e0c0" })
vim.api.nvim_set_hl(0, "DiffDelete",     { fg = "#a54460", bg = "#ead0d8" })
vim.api.nvim_set_hl(0, "DiffText",       { fg = "#46406f", bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "GitSignsAdd",    { fg = "#0b5978" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#d77c00" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#a54460" })

-- ═══════════════════════════════════════════════════════════════
-- LSP REFERENCES
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "LspReferenceText",  { bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "LspReferenceRead",  { bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#e8e0d6" })
vim.api.nvim_set_hl(0, "LspInlayHint",      { fg = "#ccc4bb", italic = true })

-- ═══════════════════════════════════════════════════════════════
-- RAINBOW DELIMITERS
-- ═══════════════════════════════════════════════════════════════
vim.api.nvim_set_hl(0, "RainbowDelimiter1", { fg = "#a54460" })  -- love
vim.api.nvim_set_hl(0, "RainbowDelimiter2", { fg = "#d77c00" })  -- gold
vim.api.nvim_set_hl(0, "RainbowDelimiter3", { fg = "#0b5978" })  -- pine
vim.api.nvim_set_hl(0, "RainbowDelimiter4", { fg = "#7d639b" })  -- iris
vim.api.nvim_set_hl(0, "RainbowDelimiter5", { fg = "#3a8592" })  -- foam
vim.api.nvim_set_hl(0, "RainbowDelimiter6", { fg = "#c5605b" })  -- rose
vim.api.nvim_set_hl(0, "RainbowDelimiter7", { fg = "#a54460" })  -- love (cycle)
