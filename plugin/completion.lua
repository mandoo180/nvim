local lspkind = require'lspkind'
local cmp = require'cmp'

cmp.setup {
  mapping = {
    ['<c-space>'] = cmp.mapping.complete(),
    -- tab completion, read :help ins-completion
    ['<tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<s-tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'gh_issues' },
    { name = 'nvim_lua' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 5 },
  },
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = '[buf]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[api]',
        path = '[path]',
        lausnip = '[snip]',
        gh_issues = '[issues]',
      },
    },
  },
  experimental = {
    native_menu = false,
    ghost_text = false,
  },
}

