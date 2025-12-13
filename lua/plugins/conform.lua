return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      cmake = { "cmake_format" },
      python = { "ruff_format", "ruff_organize_imports" },
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },
      nginx = { "nginxfmt" },
      nix = { "nixfmt" },
    },
  },
}
