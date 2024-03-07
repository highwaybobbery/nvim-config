---@class CustomModule
local Options = {}

Options.setup_early = function(opts)
  vim.g.mapleader = ' '
end

Options.setup = function(opts)
  opts = opts or {}

  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  vim.opt.backspace = '2'
  vim.opt.backup = false
  vim.opt.colorcolumn = '80'
  vim.opt.expandtab = true
  vim.opt.nu = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.scrolloff = 10
  vim.opt.shiftwidth = 2
  vim.opt.signcolumn = "number"
  vim.opt.swapfile = false
  vim.opt.tabstop = 2
  vim.opt.title = true
  vim.opt.wb = false

  vim.api.nvim_set_option("clipboard","unnamed")
end

return Options 
