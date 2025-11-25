-- LSP Configuration for Neovim 0.11.0+
-- Uses the new vim.lsp.config API instead of require('lspconfig')

local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

-- List of LSP servers to enable with default config
local servers = { "html", "cssls", "clangd" }

-- Configure LSP floating window borders (Neovim 0.11.0+ API)
-- This affects hover documentation and signature help popups
vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})

-- Set default border for LSP floating windows globally
require('vim.lsp.protocol').make_client_capabilities = (function(original)
  return function()
    local capabilities = original()
    capabilities.window = capabilities.window or {}
    capabilities.window.workDoneProgress = true
    capabilities.window.showMessage = {
      messageActionItem = { additionalPropertiesSupport = true }
    }
    return capabilities
  end
end)(require('vim.lsp.protocol').make_client_capabilities)

-- Alternative: Set float border in options (simpler approach)
vim.lsp.util.open_floating_preview = (function(original)
  return function(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or "rounded"
    opts.focusable = opts.focusable or false
    return original(contents, syntax, opts, ...)
  end
end)(vim.lsp.util.open_floating_preview)

-- Helper function to setup LSP servers with the new API
local function setup_lsp(name, config)
  config = config or {}
  config.on_attach = config.on_attach or on_attach
  config.on_init = config.on_init or on_init
  config.capabilities = config.capabilities or capabilities
  
  vim.lsp.config[name] = config
  vim.lsp.enable(name)
end

-- Setup all servers from the list with default config
for _, lsp in ipairs(servers) do
  setup_lsp(lsp)
end

-- Python LSP (pyright) with custom settings
setup_lsp('pyright', {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      }
    }
  }
})

-- Lua LSP (lua_ls) - for Neovim config editing
setup_lsp('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})

-- JavaScript/TypeScript LSP (ts_ls, formerly tsserver)
-- Uncomment to enable:
-- setup_lsp('ts_ls', {
--   settings = {
--     -- Add TypeScript-specific settings here if needed
--   }
-- })

-- JSON LSP
-- Uncomment to enable:
-- setup_lsp('jsonls', {})

-- Additional servers can be added here
-- Example template:
-- setup_lsp('server_name', {
--   cmd = { "command", "to", "start", "server" },
--   filetypes = { "filetype1", "filetype2" },
--   settings = {
--     -- server-specific settings
--   }
-- })
