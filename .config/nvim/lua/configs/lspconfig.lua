local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "ts_ls",
  "svelte",
  "clangd",
  "lua_ls",
  "zls",
  "rust_analyzer",
  "pyright",
  "sourcekit",
  "gopls",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
