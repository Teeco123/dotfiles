return {
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = "BufEnter",
		config = function()
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").clangd.setup({})
			require("lspconfig").svelte.setup({})
			require("lspconfig").ts_ls.setup({})
			require("lspconfig").sourcekit.setup({})
			require("lspconfig").bashls.setup({
				filetype = { "bash", "sh", "conf" },
			})
		end,
	},
}
