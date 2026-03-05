return {
  cmd = { "qmlls", "-E" },
  root_dir = vim.lsp.config.util.root_pattern(".qmlls.ini", ".git", "qmldir"),
  settings = {
    -- Add specific options here if needed.
  },
}
