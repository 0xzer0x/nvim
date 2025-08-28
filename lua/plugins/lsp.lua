return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type vim.diagnostic.Opts
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = false,
        severity_sort = true,
        signs = {
          numhl = {
            [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
            [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
            [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
            [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
          },
        },
        float = {
          border = "rounded",
        },
      },

      -- NOTE: additional LSPs
      servers = {
        bashls = {},
        nginx_language_server = {},
      },
    },
  },
}
