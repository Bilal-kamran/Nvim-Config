-- Lists for different tab widths
local indent2 = {
  "html",
  "css",
  "javascript",
  "lua",
}

local indent4 = {
  "java",
  "py"
}

local indent8 = {
  "c",
  "cpp",
  "asm",
  "sh",
  "make"
}

-- Function to check if a table contains a value
local function contains(table, value)
  for _, v in ipairs(table) do
    if v == value then
      return true
    end
  end
  return false
end

-- Function to set tab width based on file type
local function set_tab_width()
  local filetype = vim.bo.filetype

  if contains(indent2, filetype) then
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  elseif contains(indent4, filetype) then
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  elseif contains(indent8, filetype) then
    vim.bo.tabstop = 8
    vim.bo.shiftwidth = 8
    vim.bo.softtabstop = 0
    vim.bo.expandtab = false
  else
    -- Default tab width
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  end
end

-- Set up an autocommand to trigger the function on file open
vim.api.nvim_create_autocmd({"BufEnter"}, {
  callback = set_tab_width
})
