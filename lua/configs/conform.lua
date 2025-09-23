local options = {
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },

  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    svelte = { "prettierd", "prettier", stop_after_first = true },
    rust = { "rustfmt" },
    cpp = { "clangformat" },
    python = { "black" },
  },
}

require("conform").setup(options)
