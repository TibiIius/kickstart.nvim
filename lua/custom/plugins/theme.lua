return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = false
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  {
    {
      'f-person/auto-dark-mode.nvim',
      opts = {
        set_dark_mode = function()
          vim.cmd.background 'dark'
          vim.g.gruvbox_material_background = 'medium'
        end,
        set_light_mode = function()
          vim.cmd.background 'light'
          vim.g.gruvbox_material_background = 'hard'
        end,
        update_interval = 100,
        fallback = 'light',
      },
    },
  },
  {
    'xiyaowong/transparent.nvim',
    config = function()
      require('transparent').setup {
        -- table: default groups
        groups = {
          'Normal',
          'NormalNC',
          'Comment',
          'Constant',
          'Special',
          'Identifier',
          'Statement',
          'PreProc',
          'Type',
          'Underlined',
          'Todo',
          'String',
          'Function',
          'Conditional',
          'Repeat',
          'Operator',
          'Structure',
          'LineNr',
          'NonText',
          'SignColumn',
          'CursorLine',
          'CursorLineNr',
          'StatusLine',
          'StatusLineNC',
          'EndOfBuffer',
        },
        -- table: additional groups that should be cleared
        extra_groups = {},
        -- table: groups you don't want to clear
        exclude_groups = {},
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
      }
    end,
  },
}
