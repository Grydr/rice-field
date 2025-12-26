return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
        'nvim-tree/nvim-web-devicons' 
    },
    opts = {
        options = {
            theme = "auto",
            section_separators = { left = "", right = "" },
            component_separators = { left = "/", right = "/" }
        },

        sections = {
            lualine_c = {"filetype", "filename"},
            lualine_x = {"encoding", "fileformat"},
        },
    }
}
