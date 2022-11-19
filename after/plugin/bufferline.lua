local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

local function diagnostics_indicator(_, _, diagnostics, _)
  local symbols = { error = ' ', warning = ' ', info = ' ', hint = ' ' }
  local result = {}
  for name, count in pairs(diagnostics) do
    if symbols[name] and count > 0 then
      table.insert(result, symbols[name] .. count)
    end
  end
  result = table.concat(result, ' ')
  return #result > 0 and result or ''
end

bufferline.setup({
  options = {
    separator_style = 'thin',
    show_close_icon = false,
    show_buffer_close_icons = false,
    show_tab_indicators = false,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,
    diagnostics_indicator = diagnostics_indicator
  },
  highlights = {
    separator = { fg = '#1d202f' },
    separator_selected = { fg = '#1d202f' },
    separator_visible = { fg = '#1d202f' },
    buffer_selected = { fg = '#c0caf5' }
  }
})
