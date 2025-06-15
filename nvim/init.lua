require 'options'
require 'keymap'

vim.cmd('packadd packer.nvim')

require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'
   use 'bluz71/vim-moonfly-colors'

   use {
      'vyfor/cord.nvim',
      config = function ()
         require'cord_cfg'
      end
   }

   use {
      'nvim-treesitter/nvim-treesitter',
      requires = {'nvim-tree/nvim-web-devicons'},
      run = ':TSUpdate',
      config = function()
         require'treesitter_cfg'
      end
   }

   use {
      'folke/snacks.nvim',
      requires = {'nvim-tree/nvim-web-devicons'},
      config = function()
         require'snacks_cfg'
      end
   }

   use {
      'neovim/nvim-lspconfig',
      requires = {
         'williamboman/nvim-lsp-installer',
      },
      config = function()
         require'lsp_cfg'
         vim.diagnostic.config({
            virtual_text = true,
            signs = true
         })
         vim.opt.signcolumn = 'yes'
      end
   }

   use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function()
         require'lualine_cfg'
      end,
   }

   use {
      'echasnovski/mini.nvim',
      config = function ()
         require'mini_cfg'
      end
   }
end)

vim.cmd('colorscheme moonfly')
