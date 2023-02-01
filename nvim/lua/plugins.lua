vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

vim.api.nvim_set_hl(0, "LazyNormal", { ctermbg=0 })

require("lazy").setup({
  'shaunsingh/nord.nvim',
  'navarasu/onedark.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    version = 'nightly' -- optional, updated every week. (see issue #1193)
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
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
  'lukas-reineke/indent-blankline.nvim',
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' }
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*'
  }
},
{
  install = {
    colorscheme = {'onedark'}
  },
  ui = {
    border = 'rounded'
  }
})
