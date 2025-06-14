require'snacks'.setup({
   explorer = {
      enabled = true,
      hidden = true,
      ignored = true,
      replace_netrw = true,
      exclude = { "node_modules/", ".git/" }
   }
})

vim.keymap.set("n", "<leader><leader>",
   function() require'snacks'.explorer() end)
