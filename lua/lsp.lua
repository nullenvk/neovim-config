require 'lspconfig'

vim.lsp.config('basedpyright', {
  settings = {
    basedpyright = {
      analysis = {
        -- Enable with per-project configs
        typeCheckingMode = "off" -- off, basic, standard, strict, all
      }
    }
  }
})

vim.lsp.enable {
  'clangd',
  'lua_ls',
  'basedpyright',
  'rust_analyzer'
}


