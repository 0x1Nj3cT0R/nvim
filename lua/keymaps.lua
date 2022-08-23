local utils = require('utils')

local map = utils.map
local nmap = utils.nmap
local nnoremap = utils.nnoremap
local vnoremap = utils.vnoremap
local inoremap = utils.inoremap

nmap(';', ':')
nnoremap(';;', ';')

nnoremap('j', 'gj')
nnoremap('k', 'gk')

inoremap('<A-BS>', '<C-W>')

nnoremap('c', '"_c')
nnoremap('C', '"_C')
vnoremap('c', '"_c')

nnoremap('<leader>y', '"+y')
nnoremap('<leader>Y', '"+Y')
vnoremap('<leader>y', '"+y')

nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

nnoremap('<C-Up>', ':resize +2<CR>')
nnoremap('<C-Down>', ':resize -2<CR>')
nnoremap('<C-Left>', ':vertical resize +2<CR>')
nnoremap('<C-Right>', ':vertical resize -2<CR>')

nnoremap('sh', ':split<CR><C-w>w')
nnoremap('sv', ':vsplit<CR><C-w>w')

nnoremap('<F4>', ':set number!<CR>')
inoremap('<F4>', '<Esc>:set number!<CR>a')

nnoremap('<F5>', ':set list!<CR>')
inoremap('<F5>', '<Esc>:set list!<CR>a')

nnoremap('<F7>', ':set spell!<CR>')
inoremap('<F7>', '<Esc>:set spell!<CR>a')

nnoremap('<leader>w', ':write!<CR>')
nnoremap('<leader>q', ':bdelete<CR>')
nnoremap('<leader>s', ':source<CR>')
nnoremap('<leader>,', ':let @/=""<CR>')

nnoremap('<C-s>', ':write!<CR>')
inoremap('<C-s>', '<Esc>:write!<CR>a')

inoremap('<C-c>', '<Esc>')
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')
inoremap('jj', '<Esc>')

vnoremap('K', ':m \'<-2<CR>gv-gv')
vnoremap('J', ':m \'>+1<CR>gv-gv')

nnoremap('B', 'i<CR><Esc>')
nnoremap('Y', 'yg$')
nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')
nnoremap('J', 'mzJ`z')
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nnoremap('gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
nnoremap('<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
nnoremap('<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
nnoremap('<leader>dt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
nnoremap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
nnoremap('<leader>o', '<cmd>lua vim.diagnostic.open_float()<CR>')
nnoremap('<leader>v', '<cmd>lua vim.diagnostic.setloclist()<CR>')
nnoremap('<C-f>', '<cmd>lua vim.lsp.buf.formatting()<CR>')
vnoremap('<C-f>', '<cmd>lua vim.lsp.buf.range_formatting()<CR>')
nnoremap('<C-n>', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
nnoremap('<C-p>', '<cmd>lua vim.diagnostic.goto_next()<CR>')

nnoremap('<S-l>', '<cmd>BufferLineCycleNext<CR>')
nnoremap('<S-h>', '<cmd>BufferLineCyclePrev<CR>')

nnoremap('<Tab>', '<cmd>BufferLineCycleNext<CR>')
nnoremap('<S-Tab>', '<cmd>BufferLineCyclePrev<CR>')

nnoremap('<leader>j', '<cmd>HopChar2<CR>')
nnoremap('<leader>/', '<cmd>HopPattern<CR>')

nnoremap('<leader>e', '<cmd>NvimTreeToggle<CR>')

nnoremap('<leader>lg', '<cmd>LazyGit<CR>')

nnoremap('<leader>f', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>g', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>b', '<cmd>Telescope buffers<CR>')
nnoremap('<leader>h', '<cmd>Telescope help_tags<CR>')
nnoremap('<leader>\\', '<cmd>Telescope file_browser<CR>')

map('f', '<cmd>lua require(\'hop\').hint_char1({ direction = require(\'hop.hint\').HintDirection.AFTER_CURSOR, current_line_only = true })<CR>')
map('F', '<cmd>lua require(\'hop\').hint_char1({ direction = require(\'hop.hint\').HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>')
map('t', '<cmd>lua require(\'hop\').hint_char1({ direction = require(\'hop.hint\').HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<CR>')
map('T', '<cmd>lua require(\'hop\').hint_char1({ direction = require(\'hop.hint\').HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<CR>')
