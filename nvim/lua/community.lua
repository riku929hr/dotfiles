-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- language packages
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },

  -- completion
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- editing support
  { import = "astrocommunity.editing-support.refactoring-nvim" },
}
