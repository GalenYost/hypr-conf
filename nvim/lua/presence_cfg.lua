require("presence").setup({
    auto_update         = true,
    neovim_image_text   = "God-Tier Text Editor",
    main_image          = "file",
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 5,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,

    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
    line_number_text    = "Line %s out of %s",
})

-- require('cord').setup {
--    editor = {
--       tooltip = 'God-Tier Text Editor',
--    },
--    idle = {
--       enabled = true,
--       timeout = 450000,
--    },
--    text = {
--       workspace = '',
--    },
--    filter = function()
--       if vim.bo.filetype == "snacks_picker_list" then
--          return false
--       end
--       return true
--    end,
-- }
