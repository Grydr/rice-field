return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>fm",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "[F]ormat buffer",
        },
        {
            "<leader>tf",
            function()
                -- If autoformat is currently disabled for this buffer,
                -- then enable it, otherwise disable it
                if vim.b.disable_autoformat then
                    vim.api.nvim_exec2("FormatEnable", {})
                    vim.notify("Enabled autoformat for current buffer", "info", { title = "Conform.nvim" })
                else
                    vim.api.nvim_exec2("FormatDisable!", {})
                    vim.notify("Disabled autoformat for current buffer", "info", { title = "Conform.nvim" })
                end
            end,
            desc = "Toggle autoformat for current buffer",
        },
        {
            "<leader>tF",
            function()
                -- If autoformat is currently disabled globally,
                -- then enable it globally, otherwise disable it globally
                if vim.g.disable_autoformat then
                    vim.cmd("FormatEnable")
                    vim.notify("Enabled autoformat globally", "info", { title = "Conform.nvim" })
                else
                    vim.cmd("FormatDisable")
                    vim.notify("Disabled autoformat globally", "info", { title = "Conform.nvim" })
                end
            end,
            desc = "Toggle autoformat globally",
        },
    },
    opts = {
        notify_on_error = true,
        format_on_save = function(bufnr)
            -- Disable "format_on_save lsp_fallback" for languages that don't
            -- have a well standardized coding style. You can add additional
            -- languages here or re-enable it for the disabled ones.
            local disable_filetypes = { c = true, cpp = true }
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
            elseif disable_filetypes[vim.bo[bufnr].filetype] then
                return nil
            else
                return {
                    timeout_ms = 500,
                    lsp_format = "fallback",
                }
            end
        end,
        formatters_by_ft = {
            lua = { "stylua" },
            sh = { "shfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            -- Conform can also run multiple formatters sequentially
            -- python = { "isort", "black" },
            --
            -- You can use 'stop_after_first' to run the first available formatter from the list
            -- javascript = { "prettierd", "prettier", stop_after_first = true },
        },
    },

    config = function(_, opts)
        require("conform").setup(opts)

        vim.api.nvim_create_user_command("FormatDisable", function(args)
            if args.bang then
                -- FormatDisable! will disable formatting just for this buffer
                vim.b.disable_autoformat = true
            else
                vim.g.disable_autoformat = true
            end
        end, {
            desc = "Disable autoformat-on-save",
            bang = true,
        })

        vim.api.nvim_create_user_command("FormatEnable", function()
            vim.b.disable_autoformat = false
            vim.g.disable_autoformat = false
        end, {
            desc = "Re-enable autoformat-on-save",
        })
    end,
}
