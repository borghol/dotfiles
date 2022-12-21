local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup {
    find_files = {
      sort_last_used = "true"
    },
    git_files = {
      sort_last_used = "true",
      use_git_root = false,
      show_untracked = true,
    }
}

local function project_files()
  local opts = { sort_last_used = true, use_git_root = false, show_untracked = true } -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end


vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', project_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fs', builtin.search_history, {})
