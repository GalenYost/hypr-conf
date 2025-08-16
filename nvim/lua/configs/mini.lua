local flags = {
   "--files", "--hidden",
   "--glob", "!node_modules/*",
   "--glob", "!target/*",
   "--glob", "!.git/*",
}

local themes = {
   tokyonight = "tokyonight",
   vague = "vague",
   moonfly = "moonfly",
   rose_pine = "rose-pine",
}

local function files()
   local cmd = "rg " .. table.concat(flags, " ")
   return vim.split(vim.fn.system(cmd), "\n")
end

return {
   'echasnovski/mini.nvim',
   name = 'mini',
   config = function()
      local misc = require 'mini.misc'
      local comment = require 'mini.comment'
      local icons = require 'mini.icons'
      local pick = require 'mini.pick'

      local themery = require 'themery'

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

      vim.keymap.set(
         'n',
         '<leader>f',
         function()
            pick.start({
               source = {
                  items = files(),
               },
            })
         end,
         { noremap = true, silent = true }
      )

      vim.keymap.set(
         'n',
         '<leader>g',
         function()
            pick.builtin.grep_live({})
         end,
         { noremap = true, silent = true, }
      )

      vim.keymap.set(
         'n',
         '<leader>t',
         function()
            pick.start({
               source = {
                  items = vim.tbl_keys(themes),
                  name = 'Themes Picker',
                  choose = function(item)
                     themery.setThemeByName(item, true)
                  end,
               },
            })
         end,
         { noremap = true, silent = true }
      )
   end,
}
