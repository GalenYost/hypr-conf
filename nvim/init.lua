require 'options'
require 'keymap'

vim.cmd('packadd packer.nvim')

require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'
   use 'bluz71/vim-moonfly-colors'

   use {
      'windwp/nvim-autopairs',
      event = 'InsertEnter',
      config = function()
         require 'nvim-autopairs'.setup {}
      end
   }

   use {
      'akinsho/bufferline.nvim',
      requires = {'nvim-tree/nvim-web-devicons'},
      config = function()
         require'bufferline_cfg'
      end
   }

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
      'numToStr/Comment.nvim',
      config = function ()
         require'commentary_cfg'
      end
   }

   use {
      'nvim-telescope/telescope.nvim',
      requires = {
         'nvim-lua/plenary.nvim',
         'sharkdp/fd',
      },
      config = function ()
         require'telescope_cfg'
      end
   }

   use {
      'saghen/blink.cmp',
      requires = 'rafamadriz/friendly-snippets',
      run = 'cargo build --release',
      config = function ()
         require'blink_cfg'
      end
   }

   use {
      'neovim/nvim-lspconfig',
      requires = {
         'saghen/blink.cmp',
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
      'echasnovski/mini.misc',
      config = function ()
         require'mini_cfg'
      end
   }
end)

vim.cmd('colorscheme moonfly')
