local opt = vim.opt
local g = vim.g

if vim.version().minor < 8 then
  g.did_load_filetypes = 0
  g.do_filetype_lua = 1
end

g.mapleader = ' '

opt.laststatus = 3
opt.showtabline = 2
opt.showmode = false
opt.lazyredraw = true
opt.scrolloff = 999
opt.wrap = false
opt.linebreak = true
opt.title = true
opt.pumheight = 10
opt.pumblend = 15
opt.wildmode = 'longest:full,full'
opt.clipboard:append('unnamedplus)
opt.fileencoding = 'utf-8'
opt.spell = false
opt.spelllang = 'en_us'
opt.cursorline = true
opt.swapfile = false
opt.writebackup = false
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.fillchars = {eob = ' '}
opt.ignorecase = true
opt.smartcase = true
opt.number = true
opt.showbreak = '↪ '
opt.listchars = {
  tab = '→ ',
  space = '·',
  nbsp = '␣',
  trail = '•',
  eol = '↲',
  precedes = '«',
  extends = '»'
}
opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.updatetime = 250
opt.shortmess:append('csI')
opt.whichwrap:append('<>[]hl')
opt.iskeyword:append('-')

vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    opt.formatoptions:remove({'c', 'r', 'o'})
  end
})

local default_plugins = {
  '2html_plugin', 'getscript', 'getscriptPlugin', 'gzip', 'logipat', 'netrw', 'netrwPlugin',
  'netrwSettings', 'netrwFileHandlers', 'matchit', 'tar', 'tarPlugin', 'rrhelper', 'vimball',
  'vimballPlugin', 'zip', 'zipPlugin', 'tutor', 'rplugin', 'syntax', 'synmenu', 'optwin',
  'compiler', 'bugreport', 'ftplugin'
}

for _, plugin in pairs(default_plugins) do g['loaded_' .. plugin] = 1 end

local default_providers = {'node', 'perl', 'python3', 'ruby'}

for _, provider in ipairs(default_providers) do g['loaded_' .. provider .. '_provider'] = 0 end
