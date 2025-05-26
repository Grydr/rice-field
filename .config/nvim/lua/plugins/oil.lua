return {
    "stevearc/oil.nvim",
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,

    keys = {
        vim.keymap.set("n", "-", vim.cmd.Oil, { desc = "Open Oil file explorer" }),
        vim.keymap.set("n", "<leader>-", function()
            require("oil").toggle_float()
        end, { desc = "Open Oil file explorer" }),
    },

    config = function()
        require("oil").setup({
            delete_to_trash = true,
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
                -- This function defines what is considered a "hidden" file
                is_hidden_file = function(name, bufnr)
                    local m = name:match("^%.")
                    return m ~= nil
                end,
                -- This function defines what will never be shown, even when `show_hidden` is set
                is_always_hidden = function(name, bufnr)
                    return false
                end,
            },

            keymaps = {
                ["<C-c>"] = false,
                ["q"] = "actions.close",
            },
        })
    end,
}
