local lspconfig = require('lspconfig')

local no_completion_caps = vim.lsp.protocol.make_client_capabilities()
no_completion_caps.textDocument.completion = nil

local servers = {
   clangd = {},
   rust_analyzer = {
      on_attach = function(client, bufnr)
         if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_buf_create_autocmd('BufWritePre', {
               buffer = bufnr,
               callback = function()
                  vim.lsp.buf.format({ async = false })
               end,
            })
         end
      end,
   },
   prismals = {},
   ts_ls = {
      root_dir = function(fname)
         local deno = lspconfig.util.root_pattern("deno.json", "deno.json")(fname)
         if deno then return nil end
         return lspconfig.util.root_pattern("package.json")(fname)
      end,
   },
   denols = {},
   svelte = {},
   jsonls = {},
   lua_ls = {
      settings = {
         Lua = {
            diagnostics = { globals = { "vim" } },
         },
      },
   },
}

for name, cfg in pairs(servers) do
   cfg.capabilities = vim.tbl_deep_extend("force",
   cfg.capabilities or {},
      no_completion_caps
   )
   lspconfig[name].setup(cfg)
end
