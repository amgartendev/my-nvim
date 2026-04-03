return {
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-mirage",
    },
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
