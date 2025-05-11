-- SET LOCAL VARIABLES
local g = vim.g
local map = vim.keymap.set

-- SET LEADER AND LOCALLEADER KEYS
g.mapleader = " "
g.maplocalleader = "\\"

-- SET KEYMAPS

-- For netrw
map("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true })

-- Save and Redo
map("n", "<leader>fs", ":write<CR>", { noremap = true, silent = true })
map("n", "<leader>fr", "<C-r>", { noremap = true, silent = true })

-- To move selected lines up and down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Joins the current line with the next one
map("n", "J", "mzJ'z", { noremap = true })

-- Scroll half page down or up
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Move to the next or previous search
map("n", "n", "nzzzv", { noremap = true })
map("n", "N", "Nzzzv", { noremap = true })

-- Paste over selected text without overwriting the yank buffer
map("x", "<leader>p", [["_dP]], { noremap = true, silent = true })

-- Yank (Copy) selected text into system yank buffer
map({ "n", "v" }, "<leader>y", [["+y]], { noremap = true, silent = true })
map("n", "<leader>Y", [[+Y]], { noremap = true, silent = true })

-- Delete to void
map({ "n", "v" }, "<leader>d", "\"_d", { noremap = true, silent = true })

-- Map escape key to <C-c>
map("i", "<C-c>", "<Esc>", { noremap = true })

-- Map Q to <nop>
map("n", "Q", "<nop>", { noremap = true })

-- Format the current buffer using LSP if supported
map("n", "<leader>f", vim.lsp.buf.format, { noremap = true, silent = true })

-- Jump to items in quickfix list
map("n", "<C-cn>", "<cmd>cnext<CR>zz", { noremap = true, silent = true })
map("n", "<C-pr>", "<cmd>cprev<CR>zz", { noremap = true, silent = true })

-- Jump to items in location list
map("n", "<leader>k", "<cmd>lnext<CR>zz", { noremap = true, silent = true })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { noremap = true, silent = true })

-- Change a word under the cursor across the whole file globally (Case sensitive)
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<left><left><left>]], { noremap = true })

-- Make a file executable (mostly a script)
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { noremap = true, silent = true })

-- Create vertical and horizontal splits
map("n", "<leader>sv", "<C-w>v", { noremap = true, silent = true })
map("n", "<leader>sh", "<C-w>s", { noremap = true, silent = true })

-- Close current split
map("n", "<leader>sc", "<C-w>c", { noremap = true, silent = true })

-- Increase or decrease split height
map("n", "<leader>+", "<C-w>+", { noremap = true, silent = true })
map("n", "<leader>-", "<C-w>-", { noremap = true, silent = true })

-- Increase or decrease split width
map("n", "<leader>>", "<C-w>>", { noremap = true, silent = true })
map("n", "<leader><", "<C-w><", { noremap = true, silent = true })

-- Equalize split sizes
map("n", "<leader>se", "<C-w>=", { noremap = true, silent = true })

-- Navigate between splits (windows)
map("n", "<C-h>", "<C-w><C-h>", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w><C-l>", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w><C-j>", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w><C-k>", { noremap = true, silent = true })

-- Create new buffer
map("n", "<leader>bn", ":enew<CR>", { noremap = true, silent = true })

-- Move between buffers
map("n", "<leader>bnn", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })

-- List all buffers (uses builtin function, no Telescope required)
map("n", "<leader>bv", ":ls<CR>", { noremap = true }) -- let this show output

-- Delete current buffer
map("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })

-- Switch to alternate buffer (toggle)
map("n", "<leader>bb", "<C-^>", { noremap = true, silent = true })

-- Source the current file (use it wisely)
map("n", "<leader><leader>", function()
  vim.cmd("so")
end, { noremap = true, silent = true })
