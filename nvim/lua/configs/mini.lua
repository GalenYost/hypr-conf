local misc = require 'mini.misc'
local comment = require 'mini.comment'
local icons = require 'mini.icons'
local pick = require 'mini.pick'

local themery = require 'themery'

local themes = {
   tokyonight = "tokyonight",
   gruber_darker = "gruber-darker",
   vague = "vague",
   moonfly = "moonfly",
   rose_pine = "rose-pine",
}

misc.setup_termbg_sync()
misc.setup_restore_cursor()

comment.setup({
   mappings = {
      comment_line = '<leader>c',
      comment_visual = '<leader>c',
   },
})

icons.setup()
icons.tweak_lsp_kind()

pick.setup()

local patterns = {
   "**",
   "!*node_modules/**",
   "!*target/**",
   "!*.git/**",
}

vim.keymap.set(
   'n',
   '<leader>f',
   function()
      pick.builtin.files({
         tool = "git",
         globs = patterns,
         show_hidden = true,
         no_ignore = true,
      })
   end,
   { noremap = true, silent = true }
)

vim.keymap.set(
   'n',
   '<leader>g',
   function()
      pick.builtin.grep_live({
         globs = patterns,
         show_hidden = true,
         no_ignore = true,
         no_ignore_dot = true,
      })
   end,
   { noremap = true, silent = true }
)

local function PickTheme()
   local items = vim.tbl_keys(themes)

   pick.start({
      source = {
         items = items,
         name = 'Themes Picker',
         choose = function(item)
            themery.setThemeByName(item, true)
         end,
      },
   })
end

vim.keymap.set('n', '<leader>t', PickTheme, { desc = 'Pick custom theme' })
