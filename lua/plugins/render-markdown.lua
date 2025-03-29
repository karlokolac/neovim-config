return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },

		config = function()
			require("render-markdown").setup({
				enabled = false,
				indent = {
					enabled = true,
					per_level = 2,
					icon = "",
					highlight = "None",
				},
				bullet = {
					left_pad = 4,
				},
			})
		end,
	},
}
