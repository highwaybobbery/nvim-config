---@class CustomModule
local Bindings = {}

Bindings.setup_early = function(opts)
  vim.g.mapleader = ' '
end

Bindings.setup_late = function(opts)
  vim.keymap.set('n', '<C-l>', '<c-w>l', { noremap=true, silent=true })
  vim.keymap.set('n', '<C-h>', '<c-w>h', { noremap=true, silent=true })
  vim.keymap.set('n', '<C-k>', '<c-w>k', { noremap=true, silent=true })
  vim.keymap.set('n', '<C-j>', '<c-w>j', { noremap=true, silent=true })

  -- vim.keymap.set('t', '<C-h>l', '<C-\><C-n><C-w>l', { noremap=true, silent=true })
  -- vim.keymap.set('t', '<C-h>h', '<C-\><C-n><C-w>h', { noremap=true, silent=true })
  -- vim.keymap.set('t', '<C-h>k', '<C-\><C-n><C-w>k', { noremap=true, silent=true })
  -- vim.keymap.set('t', '<C-h>j', '<C-\><C-n><C-w>j', { noremap=true, silent=true })


  vim.keymap.set('n', '<C-p>', ':set past<cr>', { noremap=true })
  vim.keymap.set('n', '<leader><space>', ':noh<return><esc>', { noremap=true })
  vim.keymap.set('n', '<leader>q', ':q<return>', { noremap=true })
  --vim.keymap.set('n', ',', '/', { noremap=true })

  -- NeoTree 
  vim.keymap.set('n', '<leader>lt', '<Cmd>Neotree toggle left<CR>', { noremap=true })

  -- Telescope
  vim.keymap.set('n', '<leader>lf', opts.telescope_builtin.find_files, {})
  vim.keymap.set('n', '<leader>lg', opts.telescope_builtin.live_grep, {})
  vim.keymap.set('n', '<leader>lk', opts.telescope_builtin.keymaps, {})

  -- neotest
  -- vim.keymap.set('n', '<leader>rn', ''  { noremap=true })
  
end

return Bindings 
