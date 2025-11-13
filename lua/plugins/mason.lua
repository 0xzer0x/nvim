return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = { border = "rounded" },
      ensure_installed = {
        -- NOTE: Treesitter CLI
        "tree-sitter-cli",
        -- NOTE: formatters
        "prettier",
        "clang-format",
        "black",
        "isort",
        "shfmt",
        "nginx-config-formatter",
        -- NOTE: linters
        "markdownlint-cli2",
        "shellcheck",
      },
    },
  },
  "mason-org/mason-lspconfig.nvim",
}
