local function set_transparency() 
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_disable_italic_comment = 1
        vim.g.gruvbox_material_enable_bold = 1
        vim.g.gruvbox_material_transparent_background = 1
        vim.cmd.colorscheme('gruvbox-material')
        -- set_transparency()
      end,    
    }
}



