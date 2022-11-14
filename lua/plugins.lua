local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = false

vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

if fn.empty(fn.glob(install_path)) > 0 then
  print('Installing packer...')
  packer_bootstrap = fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.cmd('packadd packer.nvim')
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
})

return packer.startup(function(use)
  use('wbthomason/packer.nvim')
  use('nvim-lua/popup.nvim')
  use('nvim-lua/plenary.nvim')
  use('folke/tokyonight.nvim')
  use('kyazdani42/nvim-web-devicons')
  use('nvim-lualine/lualine.nvim')
  use('akinsho/bufferline.nvim')
  use('nvim-treesitter/nvim-treesitter')
  use('lambdalisue/suda.vim')
  use('ethanholz/nvim-lastplace')
  use('kylechui/nvim-surround')
  use('jose-elias-alvarez/null-ls.nvim')
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')
  use('numToStr/Comment.nvim')
  use('norcalli/nvim-colorizer.lua')
  use('phaazon/hop.nvim')
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')
  use('goolord/alpha-nvim')
  use('lewis6991/gitsigns.nvim')
  use('kyazdani42/nvim-tree.lua')
  use('kdheepak/lazygit.nvim')
  use('neovim/nvim-lspconfig')
  use('williamboman/nvim-lsp-installer')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('saadparwaiz1/cmp_luasnip')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-nvim-lua')
  use('L3MON4D3/LuaSnip')
  use('rafamadriz/friendly-snippets')
  use('onsails/lspkind-nvim')
  use('edluffy/hologram.nvim')

  if packer_bootstrap then
    packer.sync()
  end
end)
