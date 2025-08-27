-- return {
--    'vyfor/cord.nvim',
--    name = 'cord',
--    opts = {
--       editor = {
--          tooltip = 'God-Tier Text Editor',
--       },
--       idle = {
--          enabled = true,
--          timeout = 900000,
--       },
--       text = {
--          workspace = '',
--       }
--    },
-- }

return {
   'andweeb/presence.nvim',
   event = 'UIEnter',
   opts = {
      neovim_image_text = "God-Tier Text Editor",
      main_image        = "file",
      debounce_timeout  = 5,
   }
}
