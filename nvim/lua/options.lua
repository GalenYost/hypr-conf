vim.opt.background = 'dark'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 3
vim.opt.softtabstop = 3
vim.opt.tabstop = 3

vim.opt.termguicolors = true

vim.g.mapleader = ' '

vim.g.moonflyTransparent = true

if vim.fn.has('clipboard') == 1 then
  local is_wayland = os.getenv("WAYLAND_DISPLAY") ~= nil
  local is_x11 = os.getenv("DISPLAY") ~= nil

  if is_wayland and vim.fn.executable('wl-copy') == 1 and vim.fn.executable('wl-paste') == 1 then
    vim.g.clipboard = {
      name = 'wl-clipboard',
      copy = {
        ['+'] = 'wl-copy',
        ['*'] = 'wl-copy',
      },
      paste = {
        ['+'] = 'wl-paste --no-newline',
        ['*'] = 'wl-paste --no-newline',
      },
      cache_enabled = 0,
    }
  elseif is_x11 and vim.fn.executable('xclip') == 1 then
    vim.g.clipboard = {
      name = 'xclip',
      copy = {
        ['+'] = 'xclip -selection clipboard',
        ['*'] = 'xclip -selection primary',
      },
      paste = {
        ['+'] = 'xclip -selection clipboard -o',
        ['*'] = 'xclip -selection primary -o',
      },
      cache_enabled = 0,
    }
  end
end

vim.cmd[[ set clipboard+=unnamedplus ]]
