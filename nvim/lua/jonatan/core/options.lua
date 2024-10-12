vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line to next

opt.wrap = false

opt.termguicolors = true
opt.background = "dark" -- default to dark color scheme

-- backspace
opt.backspace = "indent,eol,start" -- allow backspaces on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as deafult register

-- split windows
opt.splitright = true
opt.splitbelow = true
