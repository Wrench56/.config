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
    f = {':Telescope live_grep<CR>', 'Find in files'},
    b = {
        name = 'Open Bash',
        f = {':ToggleTerm<CR>', 'Open Bash on Float'},
        t = {':ToggleTerm direction=tab<CR>', 'Open Bash in Tab'},
        s = {':ToggleTerm size=40 direction=vertical<CR>', 'Open Bash on Side'}
    },
    d = {':Dashboard<CR>', 'Open Dashboard'}
}

local opts = {
    prefix = '<leader>'
}

wk.register(mappings, opts)
