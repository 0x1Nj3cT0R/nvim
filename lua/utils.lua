local M = {}

local function map(mode, outer_opts)
  outer_opts = outer_opts or { noremap = true, silent = true }
  return function(lhs, rhs, opts)
    opts = vim.tbl_extend('force', outer_opts, opts or {})
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end
end

M.map = map('', {})
M.nmap = map('n', { noremap = false })
M.imap = map('i', { noremap = false })
M.nnoremap = map('n')
M.vnoremap = map('v')
M.xnoremap = map('x')
M.inoremap = map('i')

return M
