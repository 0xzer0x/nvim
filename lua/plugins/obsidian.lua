local vault_root = vim.fn.expand("~") .. "/Documents/obsidian"

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = { "ObsidianToday", "ObsidianNew", "ObsidianSearch" },
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/Documents/obsidian/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Documents/obsidian/**.md",
  },
  keys = {
    {
      "<leader>Ot",
      function()
        vim.cmd.ObsidianToday()
      end,
      desc = "OBSIDIAN: Open daily note",
    },
    {
      "<leader>Os",
      function()
        Snacks.picker.files({ cwd = vault_root })
      end,
      desc = "OBSIDIAN: Search vault notes",
    },
    {
      "<leader>On",
      function()
        vim.cmd.ObsidianNew()
      end,
      desc = "OBSIDIAN: Create new note",
    },
  },
  opts = {
    -- NOTE: using MeanderingProgrammer/render-markdown.nvim instead
    ui = {
      enable = false,
    },
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/obsidian",
      },
    },
    daily_notes = {
      folder = "1-projects/planning",
      template = "planning/daily.md",
    },
    templates = {
      subdir = "3-resources/templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },
  },
}
