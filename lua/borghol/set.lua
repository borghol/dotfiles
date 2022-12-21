vim.g.mapleader = " "

local options = {

  wrap = true,                             -- display lines as one long line

  showtabline = 2,                         -- always show tabs
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  softtabstop = 2,                         -- F if I know
  smarttab = true,                         -- Look at help, I have no idea
  expandtab = true,                        -- convert tabs to spaces

  hlsearch = false,                         -- highlight all matches on previous search pattern
  incsearch = true,                         -- Incremental Search with regex

  undofile = true,                         -- enable persistent undo
  swapfile = false,                        -- creates a swapfile
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

  termguicolors = true,                    -- set term gui colors (most terminals support this)

  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,

  signcolumn = "yes",                    -- always show the sign column, otherwise it would shift the text each time

  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  ru = true,                               -- Something to do with relativenumber
  rnu = true,                              -- Something to do with relativenumber

  hidden = true,                           -- hide buffers, don't close them

  -- redrawtime = 10000,                      -- Allow more time for redrawtime
  -- timeoutlen = 500,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 50,                        -- faster completion (4000ms default)

  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 0,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  list = true,                             -- See listchars
  confirm = true,                          -- Confirm saving/discarding on exit
  listchars = "tab:▸\\ ,trail:·",            -- Show trailing spaces and tabs
  -- fileencoding = "utf-8",                  -- the encoding written to a file
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  spell = false,                            -- point out spelling mistakes
  cursorline = true,                       -- highlight the current line
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  title = true,                            -- Set the title of the window to be the title of the buffer, not useful right now
}

vim.opt.isfname:append("@-@")

for k, v in pairs(options) do
  vim.opt[k] = v
end

