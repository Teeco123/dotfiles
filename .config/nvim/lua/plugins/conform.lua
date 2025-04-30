return {
	{
		"stevearc/conform.nvim",
		lazy = true,
		event = "BufEnter",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				swift = { "swift_format" },
				bash = { "shfmt" },
			},
			formatters = {
				swift_format = {
					command = "swift-format",
					args = { "--in-place", "$FILENAME" },
				},
			},

			-- Optional: Format on save
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			},
		},
	},
}
