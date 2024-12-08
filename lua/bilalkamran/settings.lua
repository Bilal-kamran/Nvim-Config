vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Disable Ex command globally
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("DisableExCommand", { clear = true }),
  pattern = "*",
  callback = function()
    vim.cmd("command! -nargs=* Ex :echo 'Ex command is disabled'")
  end,
})
