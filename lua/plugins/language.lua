return {
  {
    'neovim/nvim-lspconfig',
    lazy = 'false',
    version = '*',
  },

  {
    -- syntax highlighting without an lsp
    'nvim-treesitter/nvim-treesitter',
    event = {'BufReadPost', 'BufNewFile'},
    cmd = {'TSInstall', 'TSBufEnable', 'TSBufDisable', 'TSModuleInfo'},
    version = '*',

    branch = 'main',
    build = ':TSUpdate',

    opts = {
      -- IMPORTANT: UPDATE FOR NEW LANGUAGES
      ensure_installed = {'bash', 'fish', 'markdown', 'python', 'vim', 'vimdoc', 'lua'},
      highlight = {
        enable = true,
      },
      indent = {
        -- TODO maybe change this if langs like julia/fish will still act weird
        enable = true,
      }
    }
  },

  {
    'saghen/blink.cmp',
    event = 'InsertEnter',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '*',

    opts = {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'super-tab' },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      -- (Default) Only show the documentation popup when manually triggered
      completion = { documentation = { auto_show = false } },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
      -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
      -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
      --
      -- See the fuzzy documentation for more information
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  }
}
