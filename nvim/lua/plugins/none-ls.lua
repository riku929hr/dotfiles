---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- JavaScript, TypeScript
      null_ls.builtins.formatting.prettier.with({
        condition = function(utils)
          return utils.root_has_file({
            ".prettierrc",
            ".prettierrc.json",
            ".prettierrc.yml",
            ".prettierrc.js",
            "prettier.config.js",
          })
        end,
      }),
      -- php
      null_ls.builtins.formatting.phpcsfixer.with({
        condition = function(utils) return utils.root_has_file({ ".php-cs-fixer.php" }) end,
      }),
      -- lua
      null_ls.builtins.formatting.stylua.with({
        condition = function(utils) return utils.root_has_file({ ".stylua.toml", "stylua.toml" }) end,
      }),
    })
  end,
}
