-- for checking if running on Windows
local sep = package.config:sub(1,1)

-- line numbers settings
vim.opt.nu = true
vim.opt.relativenumber = true

-- indent settigns
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.wrap = false

-- undo tree
vim.opt.swapfile = false
vim.opt.backup = false
if sep == '\\' then
  vim.opt.undodir = os.getenv("LOCALAPPDATA") .. "/nvim-data/undodir"
else
  vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end
vim.opt.undofile = true

-- search highlight
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
