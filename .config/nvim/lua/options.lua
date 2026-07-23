vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.signcolumn = "yes"
vim.o.showmode = false
vim.o.swapfile = false
vim.o.undofile = true       -- save undo history
vim.o.confirm = true        -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`)instead raise a dialog asking if you wish to save the current file(s)
vim.o.winborder = 'rounded' -- only necessary if using native omnicompletion
vim.o.clipboard = 'unnamedplus'
vim.o.cursorline = true
vim.o.scrolloff = 10       -- Minimal number of screen lines to keep above and below the cursor.
vim.o.incsearch = true
vim.o.inccommand = 'split' -- shows live-replace when find/replace words
vim.o.breakindent = true
vim.o.ignorecase = true    -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.smartcase = true     -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
