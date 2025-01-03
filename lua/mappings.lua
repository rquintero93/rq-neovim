require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local utils = require("utils.functions")

vim.api.nvim_set_keymap("n", "<leader>vd", "<cmd>lua require('utils.functions').open_in_visidata()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>db", ":DBUIToggle<CR>", { noremap = true, silent = true })


vim.api.nvim_set_keymap("n", "<Leader>df", ":DBUIFindBuffer<CR>", { noremap = true, silent = true })

  -- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set("n", "<Leader>rs", "<cmd>IronRepl<cr>")
vim.keymap.set("n", "<Leader>rr", "<cmd>IronRestart<cr>")
vim.keymap.set("n", "<Leader>rf", "<cmd>IronFocus<cr>")
vim.keymap.set("n", "<Leader>rh", "<cmd>IronHide<cr>")
