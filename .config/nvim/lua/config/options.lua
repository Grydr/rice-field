-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.opt

o.cursorline = true
o.number = true
o.relativenumber = true
o.scrolloff = 999

o.tabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.cindent = true

o.termguicolors = true

vim.g.autoformat = false
