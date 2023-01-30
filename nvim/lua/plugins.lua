vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  'shaunsingh/nord.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'nvim-tree/nvim-web-devicons',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },
  {
    'glepnir/dashboard-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },


  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'nvim-lualine/lualine.nvim',
    lazy = true
  },
  'norcalli/nvim-colorizer.lua',
  'windwp/nvim-ts-autotag',
  'p00f/nvim-ts-rainbow',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',

})
