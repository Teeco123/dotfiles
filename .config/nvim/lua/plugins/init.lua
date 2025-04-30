return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	require("plugins.lspconfig"),
	require("plugins.cmp"),
	require("plugins.conform"),
	require("plugins.lualine"),
	require("plugins.transparent"),
	require("plugins.treesitter"),
	require("plugins.themes"),
	require("plugins.svelte"),
}
