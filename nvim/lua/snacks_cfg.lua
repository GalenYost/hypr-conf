require'snacks'.setup({
   picker = {
      sources = {
         explorer = {
            hidden = true,
            ignored = true,
            auto_close = true,
            exclude = { "node_modules/", ".git/" },
         }
      }
   }
})

vim.keymap.set("n", "<leader><leader>", function()
   require'snacks'.picker.explorer()
end)
