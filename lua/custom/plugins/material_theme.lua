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
          print 'dark'
          -- Change to 'darker' Material theme when dark mode is detected
          vim.g.material_style = 'darker'
          vim.cmd 'colorscheme material' -- Apply the theme again
        end,
        set_light_mode = function()
          print 'light'
          -- Change to 'lighter' Material theme when light mode is detected
          vim.g.material_style = 'lighter'
          vim.cmd 'colorscheme material' -- Apply the theme again
        end,
        update_interval = 100,
        fallback = 'dark',
      },
    },
  },
}
