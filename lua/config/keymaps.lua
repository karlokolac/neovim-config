vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Clear highlights with <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Lspconfig
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Formatting
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Toggle copilot sugestions on and off
vim.api.nvim_set_keymap(
	"n",
	"<leader>ak",
	':lua require("copilot.suggestion").toggle_auto_trigger()<CR>',
	{ noremap = true, silent = true }
)

-- Toggle copilot chat on and off
vim.api.nvim_set_keymap("n", "<leader>aj", ":CopilotChatToggle<CR>", { noremap = true, silent = true })

-- Toggle render markdown
vim.api.nvim_set_keymap("n", "<leader>rm", ":RenderMarkdown toggle<CR>", { noremap = true, silent = true })
