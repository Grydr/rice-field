-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", ";", ":")
map("x", "p", function() return 'pgv"' .. vim.v.register .. "y" end, { remap = false, expr = true })
