vim.g.netrw_liststyle = 3

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2       -- number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2    -- number of spaces to use for each step of (auto)indent
opt.expandtab = true  -- number of spaces to insert for a <Tab> in insert mode
opt.autoindent = true -- copy indent from current line when starting a new one 

opt.wrap = false      -- don't wrap lines

-- search settings
opt.ignorecase = true -- ignore case when searching with /
opt.smartcase = true  -- use case sensitive search if uppercase characters are included

opt.cursorline = true -- highlight the line with the cursor

opt.termguicolors = true -- use 24-bit color (supported on all modern terminals)
opt.background = "dark"  -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"   -- always show sign column so that text doesn't shift

opt.backspace = "indent,eol,start"  -- allow backspace on indent, end of line or insert mode start position
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.swapfile = false  -- turn off swapfile
