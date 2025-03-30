# Neovim configuration

### Used plugins:

- Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)
- Colorscheme: [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- AI integration:
  - Copilot integration: [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
  - Copilot Chat integration: [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)
- Automatically adds closing brackets: [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Completion plugins:
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
  - [lspkind](https://github.com/onsails/lspkind.nvim)
- Formatting: [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)
- Git integration in buffers: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- LSP configuration stuff (probably outdated, check Neovim 0.11 release notes):
  - [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
  - [mason.nvim](https://github.com/williamboman/mason.nvim)
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Statusline: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- Messages and cmdline UI: [noice.nvim](https://github.com/folke/noice.nvim)
- Hex color highlighter: [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- Nice markdown: [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- File picker, explorer and more: [snacks.nvim](https://github.com/folke/snacks.nvim)
- Highlighter for todo, bug etc. comments: [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- Treesitter: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Keymaps:

- UI:
  - `<leader>e` - Open file explorer
  - `<leader>ff` - Open file picker
  - `<leader><space>` - Open smart file picker
  - `<leader>fb` - Open buffer picker
  - `<leader>fg` - Open grep search
  - `<leader>rm` - Toggle render markdown
  - `<leader>gs` - Open git status menu
  - `<leader>gg` - Open lazygit
  - `<leader>tt` - Open floating terminal
- AI:
  - `<leader>aj` - Open Copilot Chat
  - `<leader>ak` - Toggle Copilot inline suggestions
  - `<M-l>` - Accept copilot completion
  - `<M-]>` - Next completion
  - `<M-[>` - Previous completion
  - `<C-]>` - Dismiss
- LSP (Default neovim >= 0.11 keymaps):
  - `grn` - Rename element
  - `grr` - Open references
  - `gri` - Go to implementation
  - `gra` - Code Action menu
  - `K` - Show documentation for symbol under cursor
- Formatting is done either via `<leader>gf` or on save.
- `<leader>` is set to `<space>`
