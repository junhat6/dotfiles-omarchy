-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Override Ctrl+s to format and save
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", function()
  vim.g.format_on_ctrl_s = true
  vim.cmd("w")
end, { desc = "Format and Save File" })
