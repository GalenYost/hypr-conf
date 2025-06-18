require'snacks'.setup({
   explorer = {
      replace_netrw = true,
      enabled = true,
      hidden = true,
      ignored = true,
      exclude = { "node_modules/", ".git/" },
   },
   picker = {
      sources = {
         explorer = {
            auto_close = true,
         }
      }
   }
})

vim.keymap.set("n", "<leader><leader>", function()
   require('snacks').picker.explorer()
end)
