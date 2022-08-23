vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = 'dark'

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl('Normal', { bg = 'none' })
hl('SignColumn', { bg = 'none' })
hl('CursorLineNR', { bg = 'none' })
hl('CursorLine', { bg = 'none' })
hl('LineNr', { fg = '#5eacd3' })
