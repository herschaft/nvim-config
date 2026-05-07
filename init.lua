require("herschaft.binds")
require("herschaft.lazy")
require("lazy").setup({
  spec = { import = "herschaft.plugins" },
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
})
require("herschaft.settings")
vim.lsp.enable({ "lua_ls", "jdtls", "kotlin_language_server", "rust_analyzer" })
