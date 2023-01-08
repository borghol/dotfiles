
-- netrw
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- Move by terminal lines, not file lines
vim.keymap.set("", "<expr>j", "(v:count == 0 ? 'gj' : 'j')")
vim.keymap.set("", "<expr>k", "(v:count == 0 ? 'gk' : 'k')")

-- Window navigation with <C-Move>
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Make Y behave like the other capitals
vim.keymap.set("n", "Y", "y$")

-- Keep it centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste without yanking replaced
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Disable
vim.keymap.set("n", "Q", "<nop>")

-- replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Open the current file in the default program
vim.keymap.set("n", "<leader>o", ":!open %<cr><cr>")

-- Stay in indent modw
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Use <C-n> to go to normal mode in a terminal
vim.keymap.set("t", "<C-n>", "<C-\\><C-N>")

-- go to file under cursor
vim.keymap.set("n", "gf", ":edit <cfile><cr>")

-- exit buffer
vim.keymap.set("n", "<leader>q", ":Bdelete<cr>")

vim.keymap.set("n", "<leader>fp", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
