local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
  return
end

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    code_actions.shellcheck,
    diagnostics.shellcheck,
    formatting.black,
    formatting.clang_format,
    formatting.cmake_format,
    formatting.codespell.with({ filetypes = { 'markdown' } }),
    formatting.isort,
    formatting.lua_format.with({
      extra_args = {
        '--column-limit=100', '--indent-width=2','--double-quote-to-single-quote',
        '--no-keep-simple-control-block-one-line', '--no-keep-simple-function-one-line',
        '--no-break-after-operator', '--break-after-functiondef-lp', '--spaces-inside-table-braces'
      }
    }),
    formatting.prettier,
    formatting.shfmt
  }
})
