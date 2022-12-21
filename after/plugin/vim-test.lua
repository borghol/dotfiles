vim.cmd [[
  let test#java#runner = 'gradletest'
]]

vim.keymap.set("n", "<leader>tn", "<cmd>TestNearest<cr>")
vim.keymap.set("n", "<leader>tf", "<cmd>TestFile<cr>")
vim.keymap.set("n", "<leader>tl", "<cmd>TestLast<cr>")
vim.keymap.set("n", "<leader>ts", "<cmd>TestSuite<cr>")
vim.keymap.set("n", "<leader>tv", "<cmd>TestVisit<cr>")

  -- let test#javascript#runner = 'vitest'
