local utils = require('utils')

local map = utils.map
local nmap = utils.nmap
local nnoremap = utils.nnoremap
local vnoremap = utils.vnoremap
local inoremap = utils.inoremap

local g = vim.g

g.mapleader = ' '

nnoremap('j', 'gj')
nnoremap('k', 'gk')

inoremap('<A-BS>', '<C-W>')

nnoremap('c', '"_c')
nnoremap('C', '"_C')
vnoremap('c', '"_c')

nnoremap('x', '"_x')
nnoremap('X', '"_X')
vnoremap('x', '"_x')

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

nnoremap('<leader>sh', ':split<CR><C-w>w')
nnoremap('<leader>sv', ':vsplit<CR><C-w>w')

nnoremap('<F8>', ':set list!<CR>')
inoremap('<F8>', '<Esc>:set list!<CR>a')

nnoremap('<F7>', ':set spell!<CR>')
inoremap('<F7>', '<Esc>:set spell!<CR>a')

nnoremap('<leader>w', ':write!<CR>')
nnoremap('<leader>q', ':bdelete!<CR>')
nnoremap('<leader>W', ':wall!<CR>')
nnoremap('<leader>Q', ':qall!<CR>')
nnoremap('<leader>,', ':let @/=""<CR>')

inoremap('<C-c>', '<Esc>')
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')
inoremap('jj', '<Esc>')

vnoremap('K', ':m \'<-2<CR>gv-gv')
vnoremap('J', ':m \'>+1<CR>gv-gv')

nnoremap('Y', 'yg$')
nnoremap('J', 'mzJ`z')

nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')

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
-- nnoremap('<C-n>', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
-- nnoremap('<C-p>', '<cmd>lua vim.diagnostic.goto_next()<CR>')

-- nnoremap('<S-l>', '<cmd>BufferLineCycleNext<CR>')
-- nnoremap('<S-h>', '<cmd>BufferLineCyclePrev<CR>')

nnoremap('<F5>', '<cmd>ZenMode<CR>')
nnoremap('<F9>', '<cmd>LazyGit<CR>')

nnoremap('<Tab>', '<cmd>BufferLineCycleNext<CR>')
nnoremap('<S-Tab>', '<cmd>BufferLineCyclePrev<CR>')

nnoremap('<leader>e', '<cmd>NvimTreeToggle<CR>')

nnoremap('<leader>ff', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>gf', '<cmd>Telescope git_files<CR>')
nnoremap('<leader>lg', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>b', '<cmd>Telescope buffers initial_mode=normal<CR>')
nnoremap('<leader>\\', '<cmd>Telescope file_browser initial_mode=normal<CR>')

map('<leader>hw', '<cmd>lua require("hop").hint_words()<CR>')
map('<leader>hp', '<cmd>lua require("hop").hint_patterns({ direction = require("hop.hint").HintDirection.AFTER_CURSOR })<CR>')
map('<leader>hP', '<cmd>lua require("hop").hint_patterns({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR })<CR>')
map('<leader>hf', '<cmd>lua require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true })<CR>')
map('<leader>hF', '<cmd>lua require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>')
map('<leader>ht', '<cmd>lua require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<CR>')
map('<leader>hT', '<cmd>lua require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<CR>')

-- nnoremap('<Left>', ':q<CR>:bprevious<CR><cmd>Glow!<CR><C-w>|<C-w>_')
-- nnoremap('<Right>', ':q<CR>:bnext<CR><cmd>Glow!<CR><C-w>|<C-w>_')
-- nnoremap('<leader>m', '<cmd>Glow!<CR><C-w>|<C-w>_')
