require("themery").setup({
   themes = { {
      name = "tokyonight",
      colorscheme = "tokyonight",
      before = [[
      require 'themes.tokyonight'
    ]],
   },
      {
         name = "gruber_darker",
         colorscheme = "gruber-darker",
         before = [[
      require 'themes.gruber_darker'
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
})
