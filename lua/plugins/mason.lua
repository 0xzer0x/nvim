return {
  {
    "mason-org/mason.nvim",
    version = "1.11.0",
    opts = {
      ui = { border = "rounded" },
      ensure_installed = {
        -- NOTE: formatters
        "prettier",
        "clang-format",
        "black",
        "isort",
        "shfmt",
        "nginx-config-formatter",
        "nixfmt",
        -- NOTE: linters
        "markdownlint-cli2",
        "shellcheck",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "1.32.0",
  },
}
