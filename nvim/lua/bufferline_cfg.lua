local bufferline = require('bufferline')
bufferline.setup{
   options = {
      mode = "buffers",
      style_preset = bufferline.style_preset.minimal,
      themable = true,
      tab_size = 9,
      diagnostics = "nvim_lsp",
      show_buffer_icons = true,
      separator_style = "thin", -- separator_style = "slant" | "slope" | "thick" | "thin"
      always_show_bufferline = true,
      show_buffer_close_icons = false,
   },
}
