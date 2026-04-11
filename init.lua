-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "JJ", "<Esc>", { noremap = false })

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disable arrow keys + PageUp/PageDown in all relevant modes
local function no_arrow(key, message)
  local msg = ':echo "' .. message .. '"<CR>'

  -- Normal mode
  vim.keymap.set("n", key, msg, { noremap = true, silent = false })

  -- Insert mode
  vim.keymap.set("i", key, "<C-o>" .. msg, { noremap = true, silent = false })

  -- Visual mode
  vim.keymap.set("v", key, "<C-u>" .. msg, { noremap = true, silent = false })
end

no_arrow("<Left>", "No left for you!")
no_arrow("<Right>", "No right for you!")
no_arrow("<Up>", "No up for you!")
no_arrow("<Down>", "No down for you!")
no_arrow("<PageUp>", "No PageUp for you!")
no_arrow("<PageDown>", "No PageDown for you!")
