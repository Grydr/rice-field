return {
   {
      "stevearc/conform.nvim",
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            sh = { "shfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
         },
      },
   },
}
