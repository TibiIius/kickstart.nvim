return {
	{
		"marko-cerovac/material.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		opts = {
			transparent = vim.g.transparent_enabled,
		},
		config = function(_, opts)
			-- Set up Material theme with the default style
			require("material").setup(opts)
			vim.g.material_style = "darker" -- Default to 'darker' theme
			vim.cmd("colorscheme material") -- Apply the theme
		end,
	},
	{
		{
			"f-person/auto-dark-mode.nvim",
			opts = {
				set_dark_mode = function()
					require("material.functions").change_style("darker")
				end,
				set_light_mode = function()
					require("material.functions").change_style("lighter")
				end,
				update_interval = 100,
				fallback = "dark",
			},
		},
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				-- table: default groups
				groups = {
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
				},
				-- table: additional groups that should be cleared
				extra_groups = {},
				-- table: groups you don't want to clear
				exclude_groups = {},
				-- function: code to be executed after highlight groups are cleared
				-- Also the user event "TransparentClear" will be triggered
				on_clear = function() end,
			})
		end,
	},
}
