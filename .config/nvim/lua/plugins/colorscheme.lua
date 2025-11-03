local function set_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 2000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("tokyonight")
      set_transparency()
    end,
  },
}
