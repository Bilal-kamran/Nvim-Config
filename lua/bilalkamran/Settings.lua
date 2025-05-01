-- Set variables
local o = vim.opt
local g = vim.g
local a = vim.api

-- Disable GUI cursor
o.guicursor = ""

-- Set Numbers and Relative Numbers
o.number = true
o.relativenumber = true

-- Enable mouse
o.mouse = "a"

o.expandtab = true
o.smartindent = true
o.breakindent = true

-- Disable line wrap
o.wrap = false

o.swapfile = false
o.backup = false

-- Set up an undo directory
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

-- Disabling highlight after search
o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"
o.isfname:append("@-@")

o.updatetime = 100

o.splitright = true
o.splitbelow = true

o.list = true
o.listchars = { tab = "» ", trail = ".", nbsp = "␣"}

o.inccommand = "split"

o.cursorline = true

o.colorcolumn = "80"

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25

vim.schedule(function()
	o.clipboard = "unnamedplus"
end)

a.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking test",
	group = a.nvim_create_augroup("Highlight-Yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
