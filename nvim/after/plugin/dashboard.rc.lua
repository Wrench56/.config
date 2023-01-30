local status, dashboard = pcall(require, 'dashboard')
if (not status) then return end


dashboard.setup({
   config = {
      week_header = {
      enable = true,
      },
      shortcut = {
      {
         desc = ' Update',
         group = '@property',
         action = 'PackerUpdate',
         key = 'u' 
      },
      {
         desc = ' Files',
         group = 'Label',
         action = 'Telescope find_files',
         key = 'f',
      },
      {
         desc = ' Apps',
         group = 'DiagnosticHint',
         action = 'Telescope app',
         key = 'a',
      },
      {
         desc = ' dotfiles',
         group = 'Number',
         action = 'Telescope dotfiles',
         key = 'd',
      },
      },
   },
})