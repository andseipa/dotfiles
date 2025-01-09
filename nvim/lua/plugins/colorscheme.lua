return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		-- config = function()
		-- 	require("catppuccin").setup({
		-- 		flavour = "macchiato",
		-- 	})
		-- end,
		opts = {
			flavour = "macchiato",
			-- configurations
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"akinsho/bufferline.nvim",
		optional = true,
		opts = function(_, opts)
			if (vim.g.colors_name or ""):find("catppuccin") then
				opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
			end
		end,
	},
}
