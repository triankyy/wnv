return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup {
      chunk = {
        enable = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = "─",
        },
      },
      indent = {
        enable = false,
        -- ...
      },
    }
  end,
  -- "shellRaining/hlchunk.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  -- config = function()
  --   require("hlchunk").setup {
  --     chunk = {
  --       chars = {
  --         horizontal_line = "─",
  --         vertical_line = "│",
  --         left_top = "╭",
  --         left_bottom = "╰",
  --         right_arrow = "─",
  --       },
  --       style = "#806d9c",
  --     },
  --   }
  -- end,
}
