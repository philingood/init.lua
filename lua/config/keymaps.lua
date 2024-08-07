-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Привязываем 'jk' для смены раскладки клавиатуры на Mac в нормальном режиме
vim.api.nvim_set_keymap(
  "n",
  "ол",
  ':silent !osascript -e \'tell application "System Events" to keystroke " " using {control down, option down, command down}\'<CR>',
  { noremap = true, silent = true, desc = "Change keyboard layout" }
)

-- Привязываем 'jk' для смены раскладки клавиатуры на Mac в режиме вставки
vim.api.nvim_set_keymap(
  "i",
  "jk",
  '<Esc>:silent !osascript -e \'tell application "System Events" to keystroke " " using {control down, option down, command down}\'<CR>a',
  { noremap = true, silent = true, desc = "Change keyboard layout" }
)
