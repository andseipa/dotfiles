return {
	"ibhagwan/fzf-lua",
	opts = function(_, opts)
		local fzf = require("fzf-lua")
		local config = fzf.config
		local actions = fzf.actions

		return {
			files = {
				cwd_prompt = false,
				actions = {
					["alt-g"] = { actions.toggle_ignore },
					["alt-h"] = { actions.toggle_hidden },
				},
			},
			grep = {
				actions = {
					["alt-g"] = { actions.toggle_ignore },
					["alt-h"] = { actions.toggle_hidden },
				},
			},
		}
	end,
}
