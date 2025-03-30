-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- css
        "tailwindcss-language-server",
        -- docker
        "dockerfile-language-server",
        -- python
        "pyright",
        -- php
        "intelephense",
        -- ts
        "typescript-language-server",
        "eslint-lsp",
        -- lua
        -- settings in community.pack.lua
        -- ruby
        "ruby-lsp",
        -- markdown
        "zk",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
