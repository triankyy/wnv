return {
  -- "IogaMaster/neocord",
  "neocord",
  dir = "~/.config/nvim/plugin/neocord",
  -- event = "VeryLazy",
  config = function()
    require "configs.neocord"
  end,
}
