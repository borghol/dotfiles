require("gruvbox").setup({
  contrast = "soft"
})

vim.cmd [[
  let g:gruvbox_material_background = 'medium'
  let g:gruvbox_material_better_performance = 1
  colorscheme gruvbox-material
]]

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
