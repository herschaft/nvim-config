return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(fname, {
			".luarc.json",
			".luarc.jsonc",
			"stylua.toml",
			"selene.toml",
			".git",
			"init.lua",
		})
		on_dir(root or vim.fs.dirname(fname))
	end,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}
