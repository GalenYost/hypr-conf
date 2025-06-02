local lspconfig = require('lspconfig')

local servers = {
   clangd = {},
   csharp_ls = {},
   rust_analyzer = {},
   tailwindcss = {},
   prismals = {},
   ts_ls = {
      root_dir = function (filename)
         local denoRootDir = lspconfig.util.root_pattern("deno.json", "deno.json")(filename);
         if denoRootDir then return nil end
         return lspconfig.util.root_pattern("package.json")(filename);
      end,
   },
   denols = {},
   svelte = {},
   jsonls = {},
   lua_ls = {
      settings = {
         Lua = {
            diagnostics = {
               globals = {'vim'}
            }
         }
      }
   },
}

for server, config in pairs(servers) do
   config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
   lspconfig[server].setup(config)
end
