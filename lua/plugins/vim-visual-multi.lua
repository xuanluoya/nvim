return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "VeryLazy",
  init = function()
    vim.g.VM_maps = {
      ["Select Cursor Down"] = "<C-j>",
      ["Select Cursor Up"]   = "<C-k>",
      ["Find Under"]         = "<C-d>",
    }
  end,
}
