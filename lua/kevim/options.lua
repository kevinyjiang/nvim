local o = vim.opt
o.expandtab = true                        -- convert tabs to spaces
o.shiftwidth = 4                          -- the number of spaces inserted for each indentation
o.tabstop = 4                             -- insert 2 spaces for a tab
o.hlsearch = false
o.incsearch = true
o.softtabstop = 4
o.cursorline = true                       -- highlight the current line
o.number = true                           -- set numbered lines
o.relativenumber = true                  -- set relative numbered lines
o.clipboard = "unnamedplus"               -- system clipboard
o.cmdheight = 2                           -- more space in the neovim command line for displaying messages
o.completeopt = { "menuone", "noselect" } -- mostly just for cmp
o.conceallevel = 0                        -- so that `` is visible in markdown files
o.fileencoding = "utf-8"                  -- the encoding written to a file
o.hlsearch = true                         -- highlight all matches on previous search pattern
o.ignorecase = true                       -- ignore case in search patterns
o.mouse = "a"                             -- allow the mouse to be used in neovim
o.pumheight = 10                          -- pop up menu height
o.showmode = true                        -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 2                         -- always show tabs
o.smartcase = true                        -- overrides 'ignorecase' if the search pattern contains uppercase characters
o.smartindent = true                      -- make indenting smarter again

o.splitbelow = true                       -- force all horizontal splits to go below current window
o.splitright = true                       -- force all vertical splits to go to the right of current window
o.termguicolors = true                    -- set term gui colors (most terminals support this)
o.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
o.updatetime = 300                        -- faster completion (4000ms default)
o.numberwidth = 4                         -- set number column width to 2 {default 4}
o.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
o.wrap = false                            -- display lines as one long line
o.scrolloff = 8                           -- is one of my fav
o.sidescrolloff = 8
o.guifont = "monospace:h17"               -- the font used in graphical neovim applications

o.shortmess:append "c"

-- lets see if this pays off...
o.backup = true                          -- creates a backup file
o.writebackup = true                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.swapfile = true                        -- creates a swapfile
o.undofile = true                        -- enable persistent undo
o.backupdir= "/var/tmp"
o.undodir = "/var/tmp"

-- legacy options syntax
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

