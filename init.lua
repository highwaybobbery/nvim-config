-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = 't'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wb = false
vim.opt.nu = true

vim.opt.backspace = '2'
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.colorcolumn = '80'
vim.opt.scrolloff = 10

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

local builtin = require("telescope.builtin")

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "typescript", "ruby", "python"},
  highlight = { enabled = true },
  indent = { enabled = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

require('Comment').setup()

vim.cmd("nnoremap <silent> <C-l> <c-w>l")
vim.cmd("nnoremap <silent> <C-h> <c-w>h")
vim.cmd("nnoremap <silent> <C-k> <c-w>k")
vim.cmd("nnoremap <silent> <C-j> <c-w>j")
vim.cmd("nnoremap <leader>p :set past<cr>")
vim.cmd("nnoremap <leader><space> :noh<return><esc>")
vim.cmd("nnoremap , /")

vim.keymap.set('n', '<C-n>', '<Cmd>Neotree toggle left<CR>')

-- telescope binds
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- neotree binds
--vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
