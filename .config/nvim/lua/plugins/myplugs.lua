package.path = "/home/gryd/.config/nvim/lua/config/?.lua"

return {
   require("custom.colorscheme"),
   { "ellisonleao/gruvbox.nvim", config = true },
   {
      "norcalli/nvim-colorizer.lua",
   },
   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "stylua",
            "shellcheck",
            "shfmt",
            "lua-language-server",
            "jdtls",
            "google-java-format",
            "java-debug-adapter",
            "java-test",
            "markdownlint-cli2",
            "markdown-toc",
         },
      },
   },
   {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
         -- add tsx and treesitter
         vim.list_extend(opts.ensure_installed, {
            "tsx",
            "typescript",
            "java",
         })
      end,
   },
   {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
         window = {
            width = 30,
         },
      },
   },
   {
      "nvim-java/nvim-java",
      dependencies = {
         "nvim-java/lua-async-await",
         "nvim-java/nvim-java-core",
         "nvim-java/nvim-java-refactor",
         "nvim-java/nvim-java-test",
         "nvim-java/nvim-java-dap",
         "MunifTanjim/nui.nvim",
         "neovim/nvim-lspconfig",
         "mfussenegger/nvim-dap",
         {
            "williamboman/mason.nvim",
            opts = {
               registries = {
                  "github:nvim-java/mason-registry",
                  "github:mason-org/mason-registry",
               },
            },
         },
         {
            "williamboman/mason-lspconfig.nvim",
            opts = {
               handlers = {
                  ["jdtls"] = function()
                     require("java").setup()
                  end,
               },
            },
         },
      },
      opts = {},
   },
   --{
   --   "folke/tokyonight.nvim",
   --   enabled = false,
   --},
   {
      "stevearc/conform.nvim",
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            sh = { "shfmt" },
            java = { "astyle" },
         },
      },
   },
   {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
   },
   {
      "MeanderingProgrammer/markdown.nvim",
      file_types = { "markdown", "norg", "rmd", "org" },
   },
}
