return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  opts = {
    easing = "quadratic",
    hide_cursor = true,
    mappings = {},
  },
  config = function(_, opts)
    local neoscroll = require("neoscroll")
    neoscroll.setup(opts)

    local map = {
      ["<C-h>"]             = function() neoscroll.ctrl_d({ duration = 250 }) end,
      ["<ScrollWheelDown>"] = function() neoscroll.scroll(0.15, { move_cursor = false, duration = 80 }) end,
      ["<ScrollWheelUp>"]   = function() neoscroll.scroll(-0.15, { move_cursor = false, duration = 80 }) end,
    }
    local modes = { "n", "v", "x" }
    for lhs, rhs in pairs(map) do
      vim.keymap.set(modes, lhs, rhs, { silent = true })
    end
  end,
}
