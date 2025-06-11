require'snacks'.setup({
   explorer = {
      enabled = true,
      replace_netrw = true,
      show_hidden = true,
      window = 'float',
   },
})

vim.keymap.set("n", "<leader><leader>",
   function() require'snacks'.explorer() end,
  { desc = "Toggle Snacks Explorer" }
)
