local status, wk = pcall(require, 'which-key')
if (not status) then return end

local mappings = {
    e = {':NvimTreeToggle<CR>', 'Toggle filetree'},
    t = {':Telescope find_files<CR>', 'Open Telescope'}
}

local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
