return {
  {
    'marko-cerovac/material.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {},
    config = function(_, opts)
      -- Set up Material theme with the default style
      require('material').setup(opts)
      vim.g.material_style = 'darker' -- Default to 'darker' theme
      vim.cmd 'colorscheme material' -- Apply the theme
    end,
  },
  {
    {
      'f-person/auto-dark-mode.nvim',
      opts = {
        set_dark_mode = function()
          require('material.functions').change_style 'darker'
        end,
        set_light_mode = function()
          require('material.functions').change_style 'lighter'
        end,
        update_interval = 100,
        fallback = 'dark',
      },
    },
  },
}
