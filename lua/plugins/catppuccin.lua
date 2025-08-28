return {
  "catppuccin/nvim",
  opts = {
    custom_highlights = function(colors)
      return {
        -- Blink
        BlinkCmpDoc = { bg = colors.base },
        BlinkCmpDocBorder = { bg = colors.base, fg = colors.blue },
        BlinkCmpMenu = { bg = colors.base },
        BlinkCmpMenuBorder = { bg = colors.base, fg = colors.blue },
        NoicePopup = { bg = colors.base },
        NoicePopupBorder = { bg = colors.base, fg = colors.blue },
        NoicePopupmenu = { bg = colors.base },
        NoicePopupmenuBorder = { bg = colors.base, fg = colors.blue },
      }
    end,
  },
}
