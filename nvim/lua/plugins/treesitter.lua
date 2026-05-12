-- Customize Treesitter
-- nvim-treesitter はパーサーのダウンロードユーティリティとして機能するため、
-- treesitter の設定は AstroCore の treesitter テーブルで行う

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      highlight = true,
      indent = true,
      auto_install = true,
      ensure_installed = {
        "bash",
        "comment",
        "css",
        "diff",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "html",
        "http",
        "ini",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "make",
        "markdown",
        "passwd",
        "php",
        "phpdoc",
        "python",
        "regex",
        "ruby",
        "rust",
        "sql",
        "svelte",
        "typescript",
        "vim",
        "vue",
        "xml",
        "yaml",
      },
    },
  },
}
