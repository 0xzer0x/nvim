local M = {}

M.map = function(mode, keys, action, desc, extra_opts)
  local opts = { noremap = true, silent = true, desc = desc }
  if extra_opts ~= nil then
    opts = vim.tbl_extend("force", opts, extra_opts)
  end
  vim.keymap.set(mode, keys, action, opts)
end

return M
