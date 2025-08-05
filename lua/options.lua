vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

vim.opt.number = true               -- show absolute number
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
vim.opt.colorcolumn = '80'

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- TODO: replace with lsp_lines.nvim
vim.diagnostic.config({
  virtual_text = true,
})
