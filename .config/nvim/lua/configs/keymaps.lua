-- set <Leader> key to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- keymaps for quick netrw access (probably will use another plugin)
-- vim.keymap.set('n', '<leader>cd', vim.cmd.Ex)

-- use 'jk' to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- open lazy dashboard
vim.keymap.set("n", "<leader>lz", vim.cmd.Lazy)

-- <ESC> key to remove search highlight
vim.keymap.set("n", "<ESC>", vim.cmd.nohlsearch)

-- move selected line
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "moves line down with visual selection" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "moves line up with visual selection" })

-- move up & down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

-- centered search cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- continuous shift in visual mode
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

-- dont overwrite yank buffer after pasting
vim.keymap.set("x", "p", function()
    return 'pgv"' .. vim.v.register .. "y"
end, { remap = false, expr = true })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- tabs operaton
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Create new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close focused tab" })
vim.keymap.set("n", "<S-l>", ":tabn<CR>", { desc = "Move focus to next tab" })
vim.keymap.set("n", "<S-h>", ":tabp<CR>", { desc = "Move focus to prev tab" })

-- split keybinds
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>h", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "make windows splits equal" })
vim.keymap.set("n", "<leader>sx", "<C-w>c", { desc = "close focused splits", silent = true })
-- or
-- vim.keymap.set("n", "<leader>sx", vim.cmd.close, { desc = "close focused splits" })
