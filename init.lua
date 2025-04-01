vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerg_font = true

require("config.lazy")
require("config.options")
require("config.keymaps")
-- require("config.util")

vim.cmd("colorscheme catppuccin-mocha")
