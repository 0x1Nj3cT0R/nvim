local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

treesitter.setup({
  ensure_installed = {
    'bash',
    'c',
    'cmake',
    'comment',
    'cpp',
    'css',
    'dockerfile',
    'go',
    'html',
    'java',
    'javascript',
    'json',
    'lua',
    'make',
    'markdown',
    'python',
    'perl',
    'php',
    'regex',
    'ruby',
    'rust',
    'scss',
    'solidity',
    'sql',
    'toml',
    'tsx',
    'typescript',
    'vim',
    'yaml'
  },

  highlight = { enable = true }
})
