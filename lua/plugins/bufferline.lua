return {
  "akinsho/bufferline.nvim",
  init = function()
    local bufline = require("catppuccin.groups.integrations.bufferline")
    function bufline.get()
      return bufline.get_theme()
    end
  end,
  opts = function(_, opts)
    local mocha = require("catppuccin.palettes").get_palette("mocha")
    local bufline = require("bufferline")

    opts.options.style_preset = bufline.style_preset.minimal
    opts.options.always_show_bufferline = false
    opts.highlights = {
      indicator_selected = {
        fg = mocha.peach,
        bg = mocha.base,
      },
    }

    return opts
  end,
}
