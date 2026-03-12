; ~/.config/nvim/after/queries/cpp/highlights.scm
;
; This file EXTENDS the default cpp highlights (does not replace them).
; It adds one custom capture: @variable.caller
; which targets the object variable before a method call, e.g.:
;   pq.push()   → pq gets @variable.caller
;   seg.begin() → seg gets @variable.caller
;
; Make sure your colorscheme defines:
;   vim.api.nvim_set_hl(0, "@variable.caller", { fg = "#c19c00" })
;; extends

(call_expression
  function: (field_expression
    argument: (identifier) @variable.member))

(subscript_expression
  argument: (identifier) @variable.member)
