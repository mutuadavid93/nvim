return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
'L3MON4D3/LuaSnip',
    dependencies = {
    'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets"
    }
  },
  {
  'hrsh7th/nvim-cmp',

  config = function()
    local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
    snippet = {
      -- required - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- for `vsnip` users.
         require('luasnip').lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<c-b>'] = cmp.mapping.scroll_docs(-4),
      ['<c-f>'] = cmp.mapping.scroll_docs(4),
      ['<c-space>'] = cmp.mapping.complete(),
      ['<c-e>'] = cmp.mapping.abort(),
      ['<cr>'] = cmp.mapping.confirm({ select = true }), -- accept currently selected item. set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
     -- { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- for luasnip users.
    }, {
      { name = 'buffer' },
    })
  })
  end
}
}
