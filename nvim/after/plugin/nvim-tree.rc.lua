local status, nvimtree = pcall(require, 'nvim-tree')
if (not status) then return end

nvimtree.setup({
	open_on_setup = true,
	hijack_cursor = true,
	view = {},
	renderer = {
		highlight_opened_files = 'name', -- none, icon, name or all
		indent_markers = {
			enable = true	
		}
	}
})
