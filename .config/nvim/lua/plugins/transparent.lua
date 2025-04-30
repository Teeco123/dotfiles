return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				on_clear = function() end,
			})
			require("transparent").clear_prefix("lualine")
		end,
	}
}
