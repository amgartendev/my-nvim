return {
  -- Configure LazyVim to load ayu
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "quiet",
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
