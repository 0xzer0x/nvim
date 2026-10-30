return {
  "yetone/avante.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    { "ColinKennedy/mega.cmdparse", dependencies = { "ColinKennedy/mega.logging" } },
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
  },
  opts = {
    -- NOTE: https://github.com/avante-corp/avante.nvim/wiki/Custom-providers#openai-compatible-providers
    provider = "sovereigneg",
    providers = {
      sovereigneg = {
        __inherited_from = "openai",
        api_key_name = "SOVEREIGNEG_API_KEY",
        endpoint = "https://backend.sovereigneg.com/v1",
        model = "kimi-k3",
      },
      claude = {
        endpoint = "https://api.anthropic.com",
        auth_type = "max",
        model = "claude-opus-5-5",
      },
    },
  },
}
