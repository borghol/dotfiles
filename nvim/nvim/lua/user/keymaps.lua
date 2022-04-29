
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

function ToggleArabic ()
  vim.cmd("set arabic!")

  if (vim.o.arabic) then
    vim.cmd("set keymap=arabic")
  else
    vim.cmd("set keymap&")
  end
end

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- All Modes
-- Move by terminal rows, not lines when moving unless a count is specified
keymap("", "<expr> j", "(v:count == 0 ? 'gj' : 'j')", opts)
keymap("", "<expr> k", "(v:count == 0 ? 'gk' : 'k')", opts)

-- keymap("n", "<leader>ll", "<cmd>set arabic!<cr>", opts)
keymap("n", "<leader>ll", ":lua ToggleArabic()<cr>", opts)

-- Normal --
-- Quickly open init.lua
keymap("n", "<leader>ve", ":edit ~/.config/nvim/init.vim<cr>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Remove search highlighting
keymap("n", "<leader>k", ":nohlsearch<CR>", opts)

-- Close current buffer
-- keymap("n", "<leader>q", ":bufdo bdelete<cr>", opts)

-- Make Y behave like the other capitals
keymap("n", "Y", "y$", opts)

-- Keep it centered
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "J", "mzJ`z", opts)

-- Open the current file in the default program
keymap("n", "<leader>x", ":!open %<cr><cr>", opts)

-- Alternating between last two files
keymap("n", "<leader>s", "<C-^>", opts)

-- For some reason which-key does not work with nvim-test, so I am adding the mappings manually
keymap("n", "<leader>tn", "<cmd>TestNearest<cr>", opts)
keymap("n", "<leader>tf", "<cmd>TestFile<cr>", opts)
keymap("n", "<leader>tl", "<cmd>TestLast<cr>", opts)
keymap("n", "<leader>ts", "<cmd>TestSuite<cr>", opts)
keymap("n", "<leader>tv", "<cmd>TestVisit<cr>", opts)

-- Visual
-- Paste replace visual selection without copying it
keymap("v", "<leader>p", "_dP", opts)

-- Insert --
-- Quickly escape to normal mode
-- keymap("i", "jj", "<esc>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Use <C-n> to go to normal mode in a terminal
keymap("t", "<C-n>", "<C-/><C-N>", opts)
