return {
  "akinsho/bufferline.nvim",
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
