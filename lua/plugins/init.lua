return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = require "configs.nvim-treesitter",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree"
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
    init = function()
      vim.g.VM_maps = {
        ["Select Cursor Down"] = "<C-j>",
        ["Select Cursor Up"]   = "<C-k>",
        ["Find Under"]         = "<C-d>",
      }
    end
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { 'markdown', 'quarto' },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {
      render_modes = true,
    },
  },

  {
    "Mythos-404/xmake.nvim",
    version = "^3",
    lazy = true,
    event = "BufReadPost",
    config = true,
  }
}
