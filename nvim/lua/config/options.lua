local opt = vim.opt
local g = vim.g
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
opt.mouse = "a"
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "80"

opt.splitright = true
opt.splitbelow = true

opt.updatetime = 300
opt.timeoutlen = 500
opt.lazyredraw = true

opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.undofile = true
local undo_dir = vim.fn.expand("~/.config/nvim/undo")
if vim.fn.isdirectory(undo_dir) == 0 then
  vim.fn.mkdir(undo_dir, "p")
end
opt.undodir = undo_dir

opt.clipboard = "unnamedplus"

g.livedown_port = 8080
g.vimspector_enable_mappings = "HUMAN"