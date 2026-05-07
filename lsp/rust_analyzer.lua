return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(fname, {
			"Cargo.toml",
			"rust-project.json",
			".git",
		})

		on_dir(root or vim.fs.dirname(fname))
	end,
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
			check = {
				command = "clippy",
			},
		},
	},
}
