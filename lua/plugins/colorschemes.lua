return {
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("onedark").setup({
				style = "darker",
			})
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("kanagawa").setup({
				transparent = false,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				-- overrides = function(colors)
				-- 	local theme = colors.theme
				-- 	return {
				-- 		Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_m3 },
				-- 		PmenuSel = { fg = "NONE", bg = theme.ui.bg_m2 },
				-- 		PmenuSbar = { bg = theme.ui.bg_m3 },
				-- 		PmenuThumb = { bg = theme.ui.bg_m3 },
				-- 	}
				-- end,
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				integrations = {
					cmp = true,
					gitsigns = true,
					treesitter = true,
				},
				no_italic = true,
			})
		end,
	},
}
