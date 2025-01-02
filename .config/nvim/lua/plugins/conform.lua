return {
   {
      "stevearc/conform.nvim",
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            sh = { "shfmt" },
            java = { "clang-format" },
            c = { "clang-format" },
         },
      },
   },
}
