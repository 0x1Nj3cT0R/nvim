local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvim_tree.setup({
  hijack_netrw = true,
  actions = { open_file = { quit_on_open = true } },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = { 'l', '<CR>', 'o' }, action = 'edit', mode = 'n' },
        { key = 'h', action = 'close_node' },
        { key = 'n', action = 'create' },
        { key = 'C', action = 'cd' }
      }
    }
  },
  renderer = {
    icons = {
      glyphs = {
        git = {
          unstaged = '',
          staged = '',
          renamed = '➜',
          deleted = '',
          untracked = '',
          ignored = '◌'
        }
      }
    },
    highlight_git = true
  },
  filters = { dotfiles = false }
})
