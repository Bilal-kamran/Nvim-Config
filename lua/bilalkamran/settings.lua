-- Disable the GUI cursor
vim.opt.guicursor = ""

-- Set numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse
vim.opt.mouse = "a"

vim.opt.expandtab = true

vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false 

vim.opt.breakindent = true

vim.opt.swapfile = false
vim.opt.backup = false

-- Setting up a undo directory
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disabling the highlight after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 100

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = ".", nbsp = "␣"}

vim.opt.inccommand = "split"

vim.opt.cursorline = true

vim.opt.colorcolumn = "80"

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.api.nvim_create_autocmd("TextYankPost",{
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("Highlight-Yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
