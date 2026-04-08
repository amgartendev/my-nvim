return {
  -- Configure LazyVim to load ayu
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
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

  -- terminal background
  {
    "typicode/bg.nvim",
    lazy = false,
  },
}
