local M = {}

--- Set a Neovim keymap with sane defaults.
--- Allows overriding the defaults via `extra_opts`.
---
--- @param mode string|string[]     Vim keymap mode(s), e.g. "n", "i", {"n","v"}
--- @param keys string              Key sequence to map
--- @param action string|function   Command or Lua function to execute
--- @param desc string|nil          Keymap description
--- @param extra_opts table|nil     Additional keymap options merged with defaults
--- @return nil
M.map = function(mode, keys, action, desc, extra_opts)
  local opts = { noremap = true, silent = true, desc = desc }
  if extra_opts ~= nil then
    opts = vim.tbl_extend("force", opts, extra_opts)
  end
  vim.keymap.set(mode, keys, action, opts)
end

--- Create a table mapping LSP server names to their resolved configuration. If
--- `config.lsp.<server>` exists, it is required. if it does not exist, an empty table is used.
--- Refer to [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md) for a list of valid server names.
---
--- @param servers string[]                  List of LSP server names
--- @return table<string, vim.lsp.ClientConfig>
M.lspconfig = function(servers)
  local configs = {}
  for _, ls in pairs(servers) do
    local ok, conf = pcall(require, "config.lsp." .. ls)
    if not ok then
      conf = {}
    end
    configs[ls] = conf
  end
  return configs
end

return M
