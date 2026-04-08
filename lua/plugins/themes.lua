return {
  -- Configure LazyVim to load ayu-mirage
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "default",
    },
  },

  -- terminal background
  {
    "typicode/bg.nvim",
    lazy = false,
  },

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
  },

  -- rose pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },

  -- moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },

  -- ayu
  {
    "Shatur/neovim-ayu",
    name = "ayu",
  },
}
