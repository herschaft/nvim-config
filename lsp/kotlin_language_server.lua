return {
	cmd = { "kotlin-language-server" },
	filetypes = { "kotlin" },
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(fname, {
			"gradlew",
			"build.gradle.kts",
			"settings.gradle.kts",
			"build.gradle",
			"settings.gradle",
			"pom.xml",
			".git",
		})

		on_dir(root or vim.fs.dirname(fname))
	end,
}
