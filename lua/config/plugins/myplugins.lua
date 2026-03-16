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





  require("telescope").setup {
 defaults = {
    layout_strategy = "horizontal",
    layout_config = { 
      width=0.95,
      preview_width=0.3
      -- vertical = {
      --   prompt_position = "top",
      --   mirror = false,
      --   height = 0.95,
      --   width = 0.95,
      --   preview_height = 0.6,
      -- },
    },
  },
}





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
  },
  {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'super-tab' },
    
    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
     use_nvim_cmp_as_default=true,
      nerd_font_variant = 'mono'
    },
    signature ={ enabled = true },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = true} },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }



  },
{
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
},

{
    "chikko80/error-lens.nvim",
    event = "BufRead",
    dependencies = {
        "nvim-telescope/telescope.nvim"
    },
    opts = {
  
        -- this setting tries to auto adjust the colors
  -- based on the diagnostic-highlight groups and your
  -- theme background color with a color blender
  enabled = false,
  auto_adjust = {
    enable = false,
    fallback_bg_color = nil, -- mandatory if enable true (e.g. #281478)
    step = 7, -- inc: colors should be brighter/darker
    total = 30 -- steps of blender
  },
  prefix = 4, -- distance code <-> diagnostic message
  -- default colors
  colors = {
    error_fg = "#FF6363", -- diagnostic font color
    error_bg = "#4B252C", -- diagnostic line color
    warn_fg = "#FA973A",
    warn_bg = "#403733",
    info_fg = "#5B38E8",
    info_bg = "#281478",
    hint_fg = "#25E64B",
    hint_bg = "#147828"
    }
},
},

{
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
},

{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',



},

}
