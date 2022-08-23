local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
  return
end

local symbols = { Error = ' ', Warn = ' ', Info = ' ', Hint = ' ' }
for type, icon in pairs(symbols) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = {
  'bashls',
  'ccls',
  'cmake',
  'cssls',
  'html',
  'jdtls',
  'jsonls',
  'pyright',
  'sumneko_lua',
  'tsserver',
  'yamlls'
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = { debounce_text_changes = 150 }
  })
end
