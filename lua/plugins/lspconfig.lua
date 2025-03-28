return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pyright",
					"gopls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")

			-- Change client encoding for clangd to suppress warning
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.offsetEncoding = "utf-8"

			lsp.lua_ls.setup({})
			lsp.clangd.setup({
				capabilities = capabilities,
			})
			lsp.pyright.setup({})
			lsp.gopls.setup({})
		end,
	},
}
