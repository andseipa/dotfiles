-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

-- vim.cmd("highlight Visual cterm=NONE gui=NONE")
opt.smoothscroll = false
opt.clipboard:append("unnamedplus")

opt.scrolloff = 7
opt.autoindent = true
opt.signcolumn = "yes"

opt.swapfile = false

vim.g.snacks_animate = false

-- Delay highlight command execution until after initialization
vim.api.nvim_exec(
	[[
  augroup VisualModeHighlight
    autocmd!
    autocmd VimEnter * highlight Visual cterm=NONE gui=NONE
  augroup END
]],
	false
)

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = false
	opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
	opt.foldmethod = "expr"
	opt.foldtext = ""
else
	opt.foldmethod = "indent"
	opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
