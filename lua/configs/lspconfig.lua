-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local merge_tb = vim.tbl_deep_extend

local servers = {
  "tailwindcss",
  "svelte",
  "eslint",
  "ts_ls",
  "rust_analyzer",
  "clangd",
  "jsonls",
  "csharp_ls",
  "jdtls",
  "qmlls",
  "hyprls",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  local opts = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }

  local exists, settings = pcall(require, "lsp." .. lsp)

  if exists then
    opts = merge_tb("force", settings, opts)
  end

  -- lspconfig[lsp].setup(opts)
  vim.lsp.config(lsp, opts)
  vim.lsp.enable(lsp)
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
