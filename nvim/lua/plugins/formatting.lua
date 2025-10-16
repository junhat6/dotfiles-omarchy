return {
  -- Override conform.nvim to add prettier
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        kotlin = { "ktlint" },
        sql = { "sql_formatter" },
      },
      -- Format on save is handled by LazyVim's format module
      -- But we can configure it via autocmd
    },
  },

  -- Override Mason to ensure formatters are installed
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "prettier", "ktlint", "sql-formatter" })
    end,
  },
}
