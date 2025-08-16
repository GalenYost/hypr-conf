return {
   'zaldih/themery.nvim',
   dependencies = {
      { 'folke/tokyonight.nvim', name = 'tokyonight' },
      { 'bluz71/vim-moonfly-colors', name = 'moonfly' },
      { 'vague2k/vague.nvim', name = 'vague' },
      { 'rose-pine/neovim', name = 'rose-pine' },
   },
   name = 'themery',
   opts = {
      themes = { {
         name = "tokyonight",
         colorscheme = "tokyonight",
         before = [[
         require 'themes.tokyonight'
       ]],
      },
         {
            name = "moonfly",
            colorscheme = "moonfly",
            before = [[
         require 'themes.moonfly'
       ]],
         },
         {
            name = "vague",
            colorscheme = "vague",
            before = [[
         require 'themes.vague'
       ]],
         },
         {
            name = "rose_pine",
            colorscheme = "rose-pine",
            before = [[
         require 'themes.rose_pine'
       ]],
         } },
      livePreview = true,
   }
}
