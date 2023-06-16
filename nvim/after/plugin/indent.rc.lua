local status, indent = pcall(require, 'nvim-indent-blankline')
if (not status) then return end

vim.g.indent_blankline_filetype_exclude = {'dashboard'}

indent.setup({
    show_current_context = true,
    show_current_context_start = true,
})
