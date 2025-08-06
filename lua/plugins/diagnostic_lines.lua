return {
  {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    opts = {},
    config = function()
      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = true,
      })
    end
  }
}
