local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach

return {
  on_attach = function (client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end
}
