return {
  -- NOTE: https://www.lazyvim.org/extras/lang/yaml
  -- Ref:
  -- - vim.lsp.ClientConfig
  -- - https://github.com/b0o/SchemaStore.nvim
  before_init = function(_, new_config)
    new_config.settings.yaml.schemas = vim.tbl_deep_extend(
      "force",
      new_config.settings.yaml.schemas or {},
      require("schemastore").yaml.schemas({
        replace = {
          ["gitlab-ci"] = {
            name = "gitlab-ci",
            description = "GitLab CI Configuration file",
            fileMatch = { "*gitlab-ci*.{yml,yaml}", ".gitlab/ci/*.{yml,yaml}" },
            url = "https://gitlab.com/gitlab-org/gitlab-foss/-/raw/master/app/assets/javascripts/editor/schema/ci.json",
          },
        },
      })
    )
  end,
}
