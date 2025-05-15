-- Function for Neovim Background transparency
function ColorMyPencils()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Autocmd for this function so it runs automatically whenever a Colorscheme is changed
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
     ColorMyPencils()
  end,
})
