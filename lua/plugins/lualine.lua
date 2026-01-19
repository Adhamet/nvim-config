return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    -- Color table for highlights (codedark-inspired)
    local colors = {
      bg = "#1e1e1e",
      fg = "#d4d4d4",
      yellow = "#dcdcaa",
      cyan = "#4ec9b0",
      darkblue = "#223e55",
      green = "#6a9955",
      orange = "#ce9178",
      violet = "#c586c0",
      magenta = "#d16d9e",
      blue = "#569cd6",
      red = "#f44747",
      lightgray = "#858585",
    }

    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
    }

    -- Config
    local config = {
      options = {
        component_separators = "",
        section_separators = "",
        theme = {
          normal = { c = { fg = colors.fg, bg = colors.bg } },
          inactive = { c = { fg = colors.lightgray, bg = colors.bg } },
        },
        globalstatus = vim.o.laststatus == 3,
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    }

    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    -- Left side
    ins_left({
      function()
        return "▊"
      end,
      color = { fg = colors.blue },
      padding = { left = 0, right = 1 },
    })

    ins_left({
      "mode",
      color = function()
        local mode_color = {
          n = colors.blue, -- Normal: blue
          i = colors.green, -- Insert: green
          v = colors.violet, -- Visual: violet
          [""] = colors.violet,
          V = colors.violet,
          c = colors.blue, -- Command: orange
          no = colors.red,
          s = colors.magenta,
          S = colors.magenta,
          [""] = colors.magenta,
          ic = colors.yellow,
          R = colors.red, -- Replace: red
          Rv = colors.red,
          cv = colors.red,
          ce = colors.red,
          r = colors.yan,
          rm = colors.cyan,
          ["r?"] = colors.cyan,
          ["!"] = colors.red,
          t = colors.cyan, -- Terminal: cyan
        }
        return { fg = mode_color[vim.fn.mode()], gui = "bold" }
      end,
      padding = { right = 1 },
    })

    ins_left({
      "location",
      color = { fg = colors.cyan },
    })

    ins_left({
      "progress",
      color = { fg = colors.fg },
    })

    ins_left({
      "diagnostics",
      sources = { "nvim_diagnostic" },
      symbols = { error = " ", warn = " ", info = " " },
      diagnostics_color = {
        color_error = { fg = colors.red },
        color_warn = { fg = colors.yellow },
        color_info = { fg = colors.cyan },
      },
    })

    -- Spacer
    ins_left({
      function()
        return "%="
      end,
    })

    -- Cool additions on the right
    ins_right({
      -- Show total lines in file
      function()
        return "☰ " .. vim.fn.line("$")
      end,
      color = { fg = colors.lightgray },
      cond = conditions.hide_in_width,
    })

    ins_right({
      function()
        local ft = vim.bo.filetype
        if ft == "" then
          return ""
        end
        return ft
      end,
      color = { fg = colors.blue },
      cond = conditions.hide_in_width,
    })

    ins_right({
      "branch",
      icon = "",
      color = { fg = colors.violet, gui = "bold" },
    })

    ins_right({
      "diff",
      symbols = { added = " ", modified = "󰝤 ", removed = " " },
      diff_color = {
        added = { fg = colors.green },
        modified = { fg = colors.orange },
        removed = { fg = colors.red },
      },
      cond = conditions.hide_in_width,
    })

    ins_right({
      -- 12-hour time with AM/PM
      function()
        return " " .. os.date("%I:%M %p")
      end,
      color = { fg = colors.yellow },
      padding = { left = 1 },
    })

    ins_right({
      function()
        return "▊"
      end,
      color = { fg = colors.blue },
      padding = { left = 1 },
    })

    return config
  end,
}
