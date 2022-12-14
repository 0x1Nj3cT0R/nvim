local g = vim.g

local status_ok, lazygit = pcall(require, 'lazygit')
if not status_ok then
  return
end

g.lazygit_floating_window_winblend = 0
g.lazygit_floating_window_scaling_factor = 0.9
g.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'}
g.lazygit_floating_window_use_plenary = 0
g.lazygit_use_neovim_remote = 1
