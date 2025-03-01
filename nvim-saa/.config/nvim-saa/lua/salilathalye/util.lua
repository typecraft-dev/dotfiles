local M = {}

-- Load color from highlight colors and return as hex
function M.getColor(group, attr)
  local hl = vim.api.nvim_get_hl(0, { name = group })
  if not hl then
    return nil
  end

  local color = string.format("#%06x", hl[attr] or 0)
  return color
end

function M.newColorWithBase(hl, base, overrides)
  overrides = overrides or {}
  local new_color = {}
  new_color.link = nil
  -- Copy all properties from base highlight group
  local subst = vim.api.nvim_get_hl(0, { name = base })
  for k, v in pairs(subst) do
    new_color[k] = v
  end

  -- Override with everything else given
  for k, v in pairs(overrides) do
    new_color[k] = v
  end
  vim.api.nvim_set_hl(0, hl, new_color)
end

return M
