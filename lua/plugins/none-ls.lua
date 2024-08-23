return {
	-- Below is from github url for this plugin
	"nvimtools/none-ls.nvim",
	"nvimtools/none-ls-extras.nvim",

	config = function()
		local null_ls = require("null-ls")
		local keymaps = require("keymaps")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

		-- Use Shift + F
		vim.keymap.set("n", "<S-f>", vim.lsp.buf.format, keymaps.opts)
	end,
}
