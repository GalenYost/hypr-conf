require('cord').setup {
   editor = {
      tooltip = 'God-Tier Text Editor',
   },
   idle = {
      enabled = true,
      timeout = 450000,
   },
   text = {
      workspace = '',
   },
   filter = function()
      if vim.bo.filetype == "snacks_picker_list" then
         return false
      end
      return true
   end,
}
