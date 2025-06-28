-- set <Leader> key to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

local function keymap(mode, lhs, rhs, additional)
  if type(additional) == "string" then
    vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, { desc = additional }))
  elseif type(additional) == "table" then
    vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, additional))
  else
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- keymaps for quick netrw access (probably will use another plugin)
-- keymap('n', '<leader>cd', vim.cmd.Ex)

-- toggle line wraps
keymap("n", "<Leader>lw", ":set wrap!<CR>", "toggle line wraps")

-- save file using <C-s>
keymap("n", "<C-s>", ":w<CR>", "Save file")

-- open new empty buffer
keymap("n", "<leader><S-n>", ":enew<CR>", "Open new empty buffer")

-- use 'jk' to exit insert mode
keymap("i", "jk", "<ESC>")

-- open lazy dashboard
keymap("n", "<leader>lz", vim.cmd.Lazy, "open lazy dashboard")

-- <ESC> key to remove search highlight
keymap("n", "<ESC>", vim.cmd.nohlsearch, "remove search highlight")

-- move selected line
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", "moves line down with visual selection")
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", "moves line up with visual selection")

-- move up & down
keymap("n", "<C-d>", "<C-d>zz", "move down in buffer with cursor centered")
keymap("n", "<C-u>", "<C-u>zz", "move up in buffer with cursor centered")

-- centered search cursor
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- continuous shift in visual mode
keymap("v", ">", ">gv")
keymap("v", "<", "<gv")

-- dont overwrite yank buffer after pasting
-- keymap("x", "p", function()
--   return 'pgv"' .. vim.v.register .. "y"
-- end, { remap = false, expr = true })
keymap("v", "p", '"_dP')
-- keymap("n", "c", '"_dC')
keymap("n", "x", '"_x')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap("n", "<C-h>", "<C-w><C-h>", "Move focus to the left window")
keymap("n", "<C-l>", "<C-w><C-l>", "Move focus to the right window")
keymap("n", "<C-j>", "<C-w><C-j>", "Move focus to the lower window")
keymap("n", "<C-k>", "<C-w><C-k>", "Move focus to the upper window")

-- tabs operaton
keymap("n", "<leader>tn", ":tabnew<CR>", "Create new tab")
keymap("n", "<leader>tx", ":tabclose<CR>", "Close focused tab")
keymap("n", "<S-l>", ":tabn<CR>", "Move focus to next tab")
keymap("n", "<S-h>", ":tabp<CR>", "Move focus to prev tab")

-- split keybinds
keymap("n", "<leader>sv", "<C-w>v", "split window vertically")
keymap("n", "<leader>sh", "<C-w>h", "split window horizontally")
keymap("n", "<leader>se", "<C-w>=", "make windows splits equal")
keymap("n", "<leader>sx", "<C-w>c", "close focused splits")
-- or
-- keymap("n", "<leader>sx", vim.cmd.close, "close focused splits")

-- resize splits
keymap("n", "<Up>", ":resize -2<CR>")
keymap("n", "<Down>", ":resize +2<CR>")
keymap("n", "<Left>", ":vertical resize -2<CR>")
keymap("n", "<Right>", ":vertical resize +2<CR>")
