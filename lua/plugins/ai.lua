return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = false,
					hide_during_completion = true,
					debounce = 75,
					keymap = {
						accept = "<M-l>",
						accept_word = false,
						accept_line = false,
						next = "<M-]>",
						prev = "<M-[>",
						dismiss = "<C-]>",
					},
				},
			})
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"zbirenbaum/copilot.lua",
			"nvim-lua/plenary.nvim",
		},
		build = "make tiktoken",
		opts = {
			model = "claude-3.7-sonnet",
			window = {
				layout = "vertical",
				width = 0.4,
				height = 1.0,
				col = -1,
				border = "single",
				filetype = "markdown",
			},
			question_header = "  karlokolac ",
			answer_header = "  Copilot ",
			mappings = {
				toggle_chat = {
					normal = "<leader>aj",
				},
			},
		},
	},
}
