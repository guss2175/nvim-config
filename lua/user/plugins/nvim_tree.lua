-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-web-devicons")
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  view = {
    side = "left",
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
})
