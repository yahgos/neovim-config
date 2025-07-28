local M = {}

-- Default configuration
local default_config = {
  enabled = true,
  debug = false,
}

local config = {}

function M.setup(opts)
  config = vim.tbl_deep_extend('force', default_config, opts or {})
  
  if not config.enabled then
    return
  end
  
  -- TODO: Set up your autocmds and logic here
  print("Last file plugin loaded!")
end

-- Function to manually test your plugin
function M.test()
  print("Plugin is working!")
  print("Config:", vim.inspect(config))
end

return M
