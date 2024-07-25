---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- bash
        "bashls",
        -- css
        "tailwindcss",
        -- docker
        "dockerls",
        -- python
        "pyright",
        -- php
        "intelephense",
        -- ts
        "tsserver",
        "eslint",
        -- lua
        -- settings in community.pack.lua
        -- rust
        "rust_analyzer",
        -- ruby
        "ruby_lsp",
        -- markdown
        "zk",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- JavaScript, TypeScript
        "prettier",
        -- PHP
        "phpcsfixer",
        -- Lua
        -- settings in community.pack.lua
        -- bash
        "shfmt",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "php",
      })
    end,
  },
}
