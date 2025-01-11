-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.del("n", "<leader><tab>[")
keymap.del("n", "<leader><tab>]")
-- keymap.del("n", "<leader>wm")

keymap.set("n", "<leader>rn", ":IncRename ", { desc = "Incremental rename" })

keymap.set("n", "<leader><tab>h", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "<leader><tab>l", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Move lines or selection up/down using Command + Arrow Keys
-- Unmap existing bindings for Up and Down arrow keys
keymap.set("n", "<A-Up>", "<cmd>m .-2<CR>==", { desc = "Move line up with Command-Up" })
keymap.set("n", "<A-Down>", "<cmd>m .+1<CR>==", { desc = "Move line down with Command-Down" })
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down with Command-Down" })
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up with Command-Up" })

keymap.del("n", "<leader>|")
keymap.del("n", "<leader>-")
keymap.set("n", '<leader>"', "<C-W>s", { desc = "Split Window Below", remap = true })
keymap.set("n", "<leader>%", "<C-W>v", { desc = "Split Window Right", remap = true })

Snacks.toggle.zoom():map("<leader>wf"):map("<leader>uZ")
