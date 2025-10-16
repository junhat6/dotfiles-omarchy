return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "weilbith/neotest-gradle", -- Gradle用
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-gradle"),
      },
    })
  end,
  keys = {
    { "<leader>tt", function() require("neotest").run.run() end, desc = "Run nearest test" },
    { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run test file" },
    { "<leader>ta", function() require("neotest").run.run(vim.fn.getcwd()) end, desc = "Run all tests" },
    { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle test summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true }) end, desc = "Show test output" },
    {
      "<leader>tO",
      function() require("neotest").output_panel.toggle() end,
      desc = "Toggle test output panel",
    },
  },
}
