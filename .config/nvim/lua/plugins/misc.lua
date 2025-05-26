return {
    -- Highlight todo, notes, etc in comments
    {
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { signs = false },
    },
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = {}, -- set to setup table
    },
}
