return {
  {
    "mistweaverco/kulala.nvim",
    ft = "http",
    config = function()
      require("kulala").setup({
        -- default_view, body or headers
        default_view = "body",
        -- dev, test, prod, can be anything
        -- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
        default_env = "dev",
        -- enable/disable debug mode
        debug = false,
        -- default formatters for different content types
        formatters = {
          json = { "jq", "." },
          xml = { "xmllint", "--format", "-" },
          html = { "xmllint", "--format", "--html", "-" },
        },
        -- default icons
        icons = {
          inlay = {
            loading = "⏳",
            done = "✅",
            error = "❌",
          },
          lualine = "🐼",
        },
        -- additional cURL options
        additional_curl_options = {},
      })
    end,
    keys = {
      { "<leader>rr", "<cmd>lua require('kulala').run()<cr>", desc = "Run HTTP request", ft = "http" },
      { "<leader>rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle view", ft = "http" },
      { "<leader>rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request", ft = "http" },
      { "<leader>rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request", ft = "http" },
    },
  },
}
