vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set wrap")
vim.cmd("set showmatch")

vim.cmd("set hlsearch")
vim.cmd("set smartcase")
vim.cmd("set ignorecase")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set shiftwidth=0")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set visualbell")

-- Mouse feature removal
vim.opt.mouse = ""

require("neidna.remap")
