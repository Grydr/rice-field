return {
    "rcarriga/nvim-notify",
    opts = {
        render = "simple",
        stages = "slide",
    },
    config = function(_, opts)
        require("notify").setup(opts)

        vim.notify = require("notify")
    end,
}
