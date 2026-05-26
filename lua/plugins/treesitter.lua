-- return {
--   'nvim-treesitter/nvim-treesitter',
--   branch = 'main',
--   build = ':TSUpdate',
--   main = 'nvim-treesitter', -- was 'nvim-treesitter.configs', now just 'nvim-treesitter'
--   init = function()
--     -- manually install parsers (replaces ensure_installed)
--     local parsers = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim',
--       'vimdoc', 'latex', 'python' }
--     local installed = require('nvim-treesitter.config').get_installed()
--     local to_install = vim.tbl_filter(function(p)
--       return not vim.tbl_contains(installed, p)
--     end, parsers)
--     if #to_install > 0 then
--       require('nvim-treesitter').install(to_install)
--     end
--
--     -- enable highlighting and indentation per filetype
--     vim.api.nvim_create_autocmd('FileType', {
--       callback = function()
--         pcall(vim.treesitter.start)
--         vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
--       end,
--     })
--   end,
-- }
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',

  config = function()
    local parsers = {
      'lua',
      'vim',
      'vimdoc',
      'query',
      'bash',
      'html',
      'css',
      'javascript',
      'typescript',
      'tsx',
      'json',
      'markdown',
      'markdown_inline',
      'python',
    }

    require('nvim-treesitter').install(parsers)

    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
