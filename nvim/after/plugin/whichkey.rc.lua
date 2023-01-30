local status, wk = pcall(require, 'which-key')
if (not status) then return end

vim.api.nvim_set_hl(0, "WhichKeyFloat", { ctermfg=0,  ctermbg=0 })

wk.setup({
    window = {
        border = 'rounded'
    }
})

local mappings = {
    e = {':NvimTreeToggle<CR>', 'Toggle filetree'},
    t = {':Telescope find_files<CR>', 'Open Telescope'},
    d = {':Dashboard<CR>', 'Open Dashboard'}
}

local opts = {
    prefix = '<leader>'
}

wk.register(mappings, opts)
