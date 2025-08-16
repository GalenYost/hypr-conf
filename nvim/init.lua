require("options")
require("keymap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
   local lazyrepo = "https://github.com/folke/lazy.nvim.git"
   local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
   if vim.v.shell_error ~= 0 then
      vim.api.nvim_echo({
         { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
         { out,                            "WarningMsg" },
         { "\nPress any key to exit..." },
      }, true, {})
      vim.fn.getchar()
      os.exit(1)
   end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   spec = {
      { import = "configs" },
   },
   checker = {
      enabled = true,
      notify = false,
   },
   ui = {
      notify = false,
   },
})

vim.api.nvim_create_autocmd("User", {
   pattern = "LazyReload",
   callback = function()
      vim.notify = function(_) end
   end,
})
