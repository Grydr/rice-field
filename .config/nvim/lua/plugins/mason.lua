return {
   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "stylua",
            "shfmt",
            "lua-language-server",
            "clangd",
         },
      },
   },
}
