return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("snacks").setup({
				terminal = { enabled = true },
				git = { enabled = true },
				lazygit = { enabled = true },
				explorer = {
					enabled = true,
				},
				picker = {
					enabled = true,
					hidden = true,
					icons = {
						tree = {
							vertical = "  ",
							middle = "  ",
							last = "  ",
						},
					},
					sources = {
						explorer = {
							tree = true,
						},
						-- Config for the fuzzy finder
						files = {
							layout = {
								layout = {
									preset = "default",
									cycle = true,
									box = "horizontal",
									width = 0.8,
									min_width = 120,
									height = 0.8,
									{
										box = "vertical",
										border = "none",
										title = "{title} {live} {flags}",
										{ win = "input", height = 1, border = "single" },
										{ win = "list", border = "single" },
									},
									{ win = "preview", title = "{preview}", border = "single", width = 0.7 },
								},
							},
						},
					},
				},
				notifier = {
					enabled = true,
				},
				styles = {
					-- Config for notification window
					notification = {
						border = "single",
						zindex = 100,
						ft = "markdown",
						wo = {
							winblend = 5,
							wrap = false,
							conceallevel = 2,
							colorcolumn = "",
						},
						bo = { filetype = "snacks_notif" },
					},
				},
			})
			function _G.toggle_floating_terminal(cmd)
				require("snacks.terminal").toggle(cmd, {
					win = {
						style = "float",
						border = "single",
						width = 0.8,
						height = 0.8,
					},
				})
			end
		end,
		keys = {
			{
				"<leader>ff",
				function()
					Snacks.picker.files()
				end,
			},
			{
				"<leader>fg",
				function()
					Snacks.picker.grep()
				end,
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
			},
			{
				"<leader>tt",
				function()
					toggle_floating_terminal()
				end,
			},
			{
				"<leader>gs",
				function()
					Snacks.picker.git_status()
				end,
			},
			{
				"<leader>e",
				function()
					Snacks.explorer()
				end,
			},
			{
				"<leader><space>",
				function()
					Snacks.picker.smart()
				end,
			},
			{
				"<leader>n",
				function()
					Snacks.picker.notifications()
				end,
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
			},
			{
				"gD",
				function()
					Snacks.picker.lsp_declarations()
				end,
			},
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
			},
		},
	},
}
