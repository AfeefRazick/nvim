vim.diagnostic.config({
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
  underline = true,
  signs = true,
  virtual_text = {
    source = "if_many",
    spacing = 2,
  },
})

if vim.g.have_nerd_font then
  vim.fn.sign_define("DiagnosticSignError", { text = "󰅚 ", texthl = "DiagnosticSignError" })
  vim.fn.sign_define("DiagnosticSignWarn",  { text = "󰀪 ", texthl = "DiagnosticSignWarn"  })
  vim.fn.sign_define("DiagnosticSignInfo",  { text = "󰋽 ", texthl = "DiagnosticSignInfo"  })
  vim.fn.sign_define("DiagnosticSignHint",  { text = "󰌶 ", texthl = "DiagnosticSignHint"  })
end

