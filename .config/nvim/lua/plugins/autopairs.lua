return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        local autopairs = require("nvim-autopairs")

        autopairs.setup({
            disable_filetype = { "TelescopePrompt", "vim" },
            check_ts = true,
            ts_config = {
                lua = { "string" }, -- it will not add a pair on that treesitter node
                javascript = { "template_string" },
                java = false, -- don't check treesitter on java
            },
            enable_check_bracket_line = false,
            ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
        })
    end,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}
