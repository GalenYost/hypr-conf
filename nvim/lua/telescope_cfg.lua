local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local builtin = require('telescope.builtin')

require('telescope').setup{
   defaults = {
      file_ignore_patterns = {
         "node_modules",
         ".git",
         "target"
      },
      mappings = {
         i = {
            ["<CR>"] = function(prompt_bufnr)
               local entry = action_state.get_selected_entry()
               actions.close(prompt_bufnr)
               vim.cmd("enew")
               vim.cmd("edit " .. vim.fn.fnameescape(entry.value))
            end,
         },
         n = {
            ["<CR>"] = function(prompt_bufnr)
               local entry = action_state.get_selected_entry()
               actions.close(prompt_bufnr)
               vim.cmd("enew")
               vim.cmd("edit " .. vim.fn.fnameescape(entry.value))
            end
         },
      },
   },
   pickers = {
      find_files = {
         hidden = true,
         no_ignore = true,
      }
   }
}

vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Find files' })
