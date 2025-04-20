local options = {
  formatters_by_ft = {
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier", "eslint_d" },
    typescript = { "prettier", "eslint_d" },
    svelte = { "prettier", "eslint_d" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    lua = { "stylua" },
    zig = { "zigfmt" },
    rust = { "rustfmt" },
    python = { "isort", "black" },
    swift = { "swift_format", "swiftformat", "swiftlint" },
    go = { "gofmt", "goimports", "golines" },
  },

  formatters = {
    clang_format = {
      prepend_args = { "--style=file", "--fallback-style=LLVM" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}

return options
