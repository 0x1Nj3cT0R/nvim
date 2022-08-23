local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require('telescope').extensions.file_browser.actions

telescope.setup({
  defaults = { mappings = { n = { ['q'] = actions.close } } },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      mappings = {
        ['i'] = {
          ['<A-BS>'] = function()
            vim.cmd('normal vbd')
          end
        },
        ['n'] = {
          ['n'] = fb_actions.create,
          ['h'] = fb_actions.goto_parent_dir,
          ['l'] = actions.select_default,
          ['r'] = fb_actions.rename,
          ['/'] = function()
            vim.cmd('startinsert')
          end
        }
      }
    }
  }
})

telescope.load_extension('file_browser')
