-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Format on save with Ctrl+s
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Only format if the write was triggered by a keymap (Ctrl+s)
    -- This allows LazyVim's format-on-save setting to work independently
    if vim.g.format_on_ctrl_s then
      LazyVim.format({ force = true })
      vim.g.format_on_ctrl_s = false
    end
  end,
})
