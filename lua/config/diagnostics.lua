vim.diagnostic.config {
  severity_sort = true,
  underline = true,
  float = { border = 'rounded', source = 'if_many' },
  virtual_text = {
    source = 'if_many',
    spacing = 2,
  },
  signs = vim.g.have_nerd_font and {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰅚 ',
      [vim.diagnostic.severity.WARN] = '󰀪 ',
      [vim.diagnostic.severity.INFO] = '󰋽 ',
      [vim.diagnostic.severity.HINT] = '󰌶 ',
    },
  } or true,
}
