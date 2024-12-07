-- Function to set tab width based on file type

local function set_tab_width()
  local filetype = vim.bo.filetype

  if filetype == "html" or filetype == "css" or filetype == "javascript" or filetype == "lua" then
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  elseif filetype == "c" or filetype == "cpp" or filetype == "asm" or filetype == "sh" then
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  else
    -- Default tab width
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end
end

vim.api.nvim_create_autocmd({"BufEnter"}, {
  callback = set_tab_width
})
