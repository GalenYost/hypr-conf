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
      colorscheme = {
         theme_list = {
            "tokyonight-night",
            "moonfly",
            "gruber-darker",
         },
         enable_preview = true,
      },
   },
})

telescope.load_extension('fzf')

vim.keymap.set("n", "<leader>f", builtin.find_files, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>g", builtin.live_grep, { noremap = true, silent = true })

vim.api.nvim_create_user_command("Schemes", builtin.colorscheme, { desc = "list colorschemes" })
