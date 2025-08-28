return {
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = ".github/workflows/*",
        ["https://json.schemastore.org/github-action.json"] = ".github/action.{yml,yaml}",
        ["https://json.schemastore.org/kustomization.json"] = "kustomization.{yml,yaml}",
        ["https://json.schemastore.org/prometheus.json"] = "prometheus.{yml,yaml}",
        ["https://json.schemastore.org/prometheus.rules.json"] = "*.rules.{yml,yaml}",
        ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {
          "*gitlab-ci*.{yml,yaml}",
          ".gitlab/ci/*.yml",
        },
      },
    },
  },
}
