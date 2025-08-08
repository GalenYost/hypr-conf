require'mini.misc'.setup_termbg_sync()
require'mini.misc'.setup_restore_cursor()

require'mini.comment'.setup({
   mappings = {
      comment_line = '<leader>c',
      comment_visual = '<leader>c',
   },
})

require'mini.icons'.setup()
require'mini.icons'.tweak_lsp_kind()
