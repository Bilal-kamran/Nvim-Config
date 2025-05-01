-- Function for Neovim Background transparency
function ColorMyPencils()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
end

-- Autocmd for this function so it runs automatically whenever a Colorscheme is changed
vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
                ColorMyPencils()
        end,
})
