local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
   defaults = {
      sorting_strategy = 'ascending',
      layout_config = { prompt_position = 'top' },
      file_sorter = telescope.extensions.fzf.native_fzf_sorter,
      file_ignore_patterns = {
         "node_modules/",
         ".git/",
         "target/",
      },
   },
   pickers = {
      find_files = {
         hidden = true,
      },
   },
})

telescope.load_extension('fzf')

vim.keymap.set("n", "<leader><leader>", builtin.find_files, { noremap = true, silent = true })
