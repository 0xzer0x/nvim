local function open_notes()
  local vault = vim.fn.getenv("HOME") .. "/Documents/obsidian"
  vim.api.nvim_set_current_dir(vault)
  vim.api.nvim_command("ObsidianToday")
end

-- NOTE: dashboard configuration.
-- https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md
local dashboard = {
  enabled = true,
  preset = {
    header = table.concat({
      [[           ▄ ▄                   ]],
      [[       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ]],
      [[       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ]],
      [[    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ]],
      [[  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ]],
      [[  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄]],
      [[▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █]],
      [[█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █]],
      [[    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ]],
    }, "\n"),
    keys = {
      { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
      { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
      { icon = " ", key = "o", desc = "Notes", action = open_notes },
      { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
      { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
      {
        icon = " ",
        key = "c",
        desc = "Config",
        action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
      },
      { icon = " ", key = "s", desc = "Restore Session", section = "session" },
      { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
      { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
      { icon = " ", key = "q", desc = "Quit", action = ":qa" },
    },
  },
}

-- NOTE: input configuration.
-- https://github.com/folke/snacks.nvim/blob/main/docs/input.md
local input = {
  enabled = true,
}

-- NOTE: indent configuration.
-- https://github.com/folke/snacks.nvim/blob/main/docs/indent.md
local indent = {
  enabled = true,
  hl = {
    "SnacksIndent1",
    "SnacksIndent2",
    "SnacksIndent3",
    "SnacksIndent4",
    "SnacksIndent5",
    "SnacksIndent6",
    "SnacksIndent7",
    "SnacksIndent8",
  },
  animate = {
    enabled = false,
  },
}

-- NOTE: gitbrowse configuration.
-- https://github.com/folke/snacks.nvim/blob/main/docs/gitbrowse.md
local gitbrowse = {
  enabled = true,
  url_patterns = {
    ["gitlab%..*"] = {
      branch = "/-/tree/{branch}",
      file = "/-/blob/{branch}/{file}#L{line_start}-L{line_end}",
      permalink = "/-/blob/{commit}/{file}#L{line_start}-L{line_end}",
      commit = "/-/commit/{commit}",
    },
    ["github%.com"] = {
      branch = "/tree/{branch}",
      file = "/blob/{branch}/{file}#L{line_start}-L{line_end}",
      permalink = "/blob/{commit}/{file}#L{line_start}-L{line_end}",
      commit = "/commit/{commit}",
    },
    ["bitbucket%.org"] = {
      branch = "/src/{branch}",
      file = "/src/{branch}/{file}#lines-{line_start}-L{line_end}",
      permalink = "/src/{commit}/{file}#lines-{line_start}-L{line_end}",
      commit = "/commits/{commit}",
    },
    ["git.sr.ht"] = {
      branch = "/tree/{branch}",
      file = "/tree/{branch}/item/{file}",
      permalink = "/tree/{commit}/item/{file}#L{line_start}",
      commit = "/commit/{commit}",
    },
  },
}

-- NOTE: scroll configuration.
-- https://github.com/folke/snacks.nvim/blob/main/docs/scroll.md
local scroll = {
  enabled = false,
}

return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>fe",
        function()
          Snacks.explorer({ cwd = LazyVim.root(), layout = { layout = { width = 0.3 } } })
        end,
        desc = "Explorer Snacks (root dir)",
      },
      {
        "<leader>fE",
        function()
          Snacks.explorer({ layout = { layout = { width = 0.3 } } })
        end,
        desc = "Explorer Snacks (cwd)",
      },
      { "<leader>e", "<leader>fe", desc = "Explorer Snacks (root dir)", remap = true },
      { "<leader>E", "<leader>fE", desc = "Explorer Snacks (cwd)", remap = true },
    },
    opts = {
      dashboard = dashboard,
      indent = indent,
      input = input,
      gitbrowse = gitbrowse,
      scroll = scroll,
      styles = {
        input = {
          relative = "cursor",
          row = -3,
          col = 0,
          width = 40,
        },
      },
    },
  },
}
