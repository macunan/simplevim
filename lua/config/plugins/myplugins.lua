return {
{
  "calincru/peaksea.vim", 
  lazy = false, -- No cargarlo perezosamente
  priority = 1000, -- Cargar antes que otros plugins
  config = function()
    vim.cmd([[colorscheme peaksea]])
  end
  },

{ 'nvim-telescope/telescope.nvim', 
dependencies = {
'nvim-lua/plenary.nvim',
{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
},
config=function()
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', builtin.oldfiles, { desc = 'Telescope help tags' })
end
},

  {'akinsho/toggleterm.nvim', version = "*", config = true},

{
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      },
    },
  },





{'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
  }

}


