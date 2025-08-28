return {
  "saghen/blink.cmp",
  dependencies = {
    {
      "saghen/blink.compat",
      version = not vim.g.lazyvim_blink_main and "*",
      opts = {},
    },
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      kind_icons = LazyVim.config.icons.kinds,
    },

    completion = {
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
      menu = {
        scrollbar = true,
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
          },
        },
      },
      documentation = {
        auto_show = true,
        window = {
          scrollbar = false,
          border = "rounded",
        },
      },
    },

    -- experimental signature help support
    signature = {
      enabled = false,
      window = {
        border = "rounded",
        scrollbar = false,
        show_documentation = false,
      },
    },

    snippets = {
      preset = "luasnip",
    },

    sources = {
      -- adding any nvim-cmp sources here will enable them
      -- with blink.compat
      compat = { "obsidian" },
      default = { "path", "snippets", "lsp", "buffer" },
    },

    keymap = {
      preset = "enter",
      ["<C-y>"] = { "select_and_accept" },
      ["<C-j>"] = { "select_next" },
      ["<C-k>"] = { "select_prev" },
      ["<C-f>"] = { "scroll_documentation_up" },
      ["<C-b>"] = { "scroll_documentation_down" },
      ["<C-Space>"] = { "show" },
      ["<C-CR>"] = { "cancel" },
      ["<C-tab>"] = { "snippet_forward" },
      ["<C-S-tab>"] = { "snippet_backward" },
    },
  },
}
