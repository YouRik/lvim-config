-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

local wk = require("which-key")

-- shortcuts to copy paths
wk.add({
  { "<leader>P", group = "+paths" },
})
map("n", "<Leader><S-P>f", [[:let @*=expand("%:p")<CR>]], { desc = "Copy full file path", silent = true })
map("n", "<Leader><S-P>d", [[:let @*=expand("%:p:h")<CR>]], { desc = "Copy directory path", silent = true })
map("n", "<Leader><S-P>e", [[:let @*=expand("%:e")<CR>]], { desc = "Copy file extension", silent = true })
map("n", "<Leader><S-P>s", [[:let @*=expand("%:t")<CR>]], { desc = "Copy short path", silent = true })

-- disable tabs
vim.keymap.del("n", "<Leader><Tab>[")
vim.keymap.del("n", "<Leader><Tab>]")
vim.keymap.del("n", "<Leader><Tab>f")
vim.keymap.del("n", "<Leader><Tab>l")
vim.keymap.del("n", "<Leader><Tab>d")
vim.keymap.del("n", "<Leader><Tab>o")
vim.keymap.del("n", "<Leader><Tab><Tab>")
vim.keymap.del("n", "<Leader>uA")

-- disable terminal keymaps
vim.keymap.del("n", "<Leader>fT")
vim.keymap.del("n", "<Leader>ft")
vim.keymap.del("n", "<C-/>")
vim.keymap.del("t", "<C-/>")
vim.keymap.del("n", "<C-_>")
