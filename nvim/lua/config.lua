vim.g.mapleader = "\\"
vim.g.gruvbox_baby_background_color = 'dark'
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.gruvbox_baby_telescope_theme = 1
vim.cmd [[
  autocmd BufWinEnter * normal zR
  colorscheme gruvbox
]]

vim.g.rainbow_active = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.NERDTreeMirror = 1

vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.backup = false
vim.o.errorbells = false
vim.o.completeopt = 'menuone,noinsert,preview'
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.pastetoggle = '<F2>'


vim.wo.nu = true
vim.wo.rnu = true
vim.wo.wrap = false
vim.wo.signcolumn = 'yes'

local indent = 2;
vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.tabstop = indent
vim.bo.shiftwidth = indent
vim.bo.shiftwidth = indent
vim.bo.smartindent = true
vim.bo.swapfile = false

---- vim-illuminate ----
vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
