require 'keymap'
require 'options'

vim.pack.add({
   { src = 'https://github.com/vyfor/cord.nvim',                 name = 'cord' },

   {
      src = 'https://github.com/nvim-lualine/lualine.nvim',
      name = 'lualine',
      { src = 'https://github.com/nvim-tree/nvim-web-devicons', name = 'devicons' },
   },

   { src = 'https://github.com/zaldih/themery.nvim',             name = 'themery' },
   { src = 'https://github.com/echasnovski/mini.nvim',           name = 'mini' },
   { src = 'https://github.com/nvim-treesitter/nvim-treesitter', name = 'tree-sitter' },

   {
      src = 'https://github.com/neovim/nvim-lspconfig',
      name = 'lsp',
      { src = 'https://github.com/williamboman/nvim-lsp-installer' },
      { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
      { src = 'https://github.com/hrsh7th/cmp-buffer' },
      { src = 'https://github.com/hrsh7th/cmp-path' },
      { src = 'https://github.com/hrsh7th/cmp-cmdline' },
      { src = 'https://github.com/hrsh7th/nvim-cmp' },
      { src = 'https://github.com/hrsh7th/cmp-vsnip' },
      { src = 'https://github.com/hrsh7th/vim-vsnip' },
   },

   { src = 'https://github.com/folke/tokyonight.nvim',     name = 'tokyonight' },
   { src = 'https://github.com/bluz71/vim-moonfly-colors', name = 'moonfly' },
   { src = 'https://github.com/vague2k/vague.nvim',        name = 'vague' },
   { src = 'https://github.com/rose-pine/neovim',          name = 'rose-pine' },
})

require 'configs.cord'
require 'configs.lsp'
require 'configs.lualine'
require 'configs.mini'
require 'configs.treesitter'
require 'configs.themery'
