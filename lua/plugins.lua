-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{'tanvirtin/monokai.nvim'},
		{'neovim/nvim-lspconfig'},
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'saadparwaiz1/cmp_luasnip'},
		{'L3MON4D3/LuaSnip'},
	},
	checker = { enabled = true },
})

--return require('packer').startup(function(use)
 --   use 'L3MON4D3/LuaSnip' -- Snippets plugin
--
 --   use 'echasnovski/mini.nvim'

   -- use 'lervag/vimtex'

    --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

   -- use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} } }

    -- -- Automatically set up your configuration after cloning packer.nvim
    -- -- Put this at the end after all plugins
   -- if packer_bootstrap then
  --      require('packer').sync()
  --  end
--end)

