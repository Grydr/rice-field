vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.incsearch = true -- live show search
vim.opt.inccommand = "split" -- live show subtitution
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
    vim.o.clipboard = "unnamedplus"
end)

vim.o.updatetime = 100 -- Decrease update time

vim.o.confirm = true

-- length of an actual \t character:
vim.opt.tabstop = 4

-- length to use when editing text (eg. TAB and BS keys)
--  (0 for ‘tabstop’, -1 for ‘shiftwidth’):
vim.opt.shiftwidth = 4

-- length to use when shifting text (eg. <<, >> and == commands)
-- (0 for ‘tabstop’):
vim.opt.softtabstop = 4

-- if set, only insert spaces; otherwise insert \t and complete with spaces:
vim.opt.expandtab = true

-- try to be smart (increase the indenting level after ‘{’,
-- decrease it after ‘}’, and so on):
vim.opt.smartindent = true

-- reproduce the indentation of the previous line:
vim.opt.autoindent = true

-- a stricter alternative which works better for the C language:
vim.opt.cindent = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

vim.g.autoformat = false
vim.g.netrw_banner = 0
