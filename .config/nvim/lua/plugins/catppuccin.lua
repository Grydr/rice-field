package.path = "/home/gryd/.config/nvim/lua/config/?.lua"
return {
   require("custom.colorscheme"),
   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
