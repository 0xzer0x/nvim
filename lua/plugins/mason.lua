return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = { border = "rounded" },
      ensure_installed = {
        -- NOTE: Treesitter CLI
        "tree-sitter-cli",
        -- NOTE: formatters
        "clang-format",
        "shfmt",
        "nginx-config-formatter",
        "hclfmt",
        -- NOTE: linters
        "markdownlint-cli2",
        "shellcheck",
      },
    },
  },
  "mason-org/mason-lspconfig.nvim",
}
