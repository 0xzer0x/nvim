return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      markdown = { "prettier" },
      yaml = { "prettier" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "ruff_format", "ruff_organize_imports" },
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },
      nginx = { "nginxfmt" },
      nix = { "nixfmt" },
    },
  },
}
