local options = {
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },

  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    rust = { "rustfmt" },
    cpp = { "clangformat" },
    python = { "black" },
  },
}

require("conform").setup(options)
