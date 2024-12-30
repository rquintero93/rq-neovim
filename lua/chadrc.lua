-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "nightowl",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {

load_on_startup = true,
  --   header = {
  --     "                            ",
  --     "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
  --     "   ▄▀███▄     ▄██ █████▀    ",
  --     "   ██▄▀███▄   ███           ",
  --     "   ███  ▀███▄ ███           ",
  --     "   ███    ▀██ ███           ",
  --     "   ███      ▀ ███           ",
  --     "   ▀██ █████▄▀█▀▄██████▄    ",
  --     "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
  --     "                            ",
  --     "     Powered By Neovim    ",
  --     "                            ",
  --
  -- }
      header = {
     "                       ",
     "   ██████╗   ██████╗   ",
     "   ██╔══██╗ ██╔═══██╗  ",
     "   ██████╔╝ ██║   ██║  ",
     "   ██╔══██╗ ██║▄▄ ██║  ",
     "   ██║  ██║ ╚██████╔╝  ",
     "   ╚═╝  ╚═╝  ╚══▀▀═╝   ",
     "                       ",
     "   Powered by Neovim   ",
     "                       ",
  }
}


M.ui = {
    cmp = {
      icons_left = false, -- only for non-atom styles!
      style = "default", -- default/flat_light/flat_dark/atom/atom_colored
      format_colors = {
        tailwind = false, -- will work for css lsp too
        icon = "󱓻",
      },
    },

    telescope = { style = "borderless" }, -- borderless / bordered

    statusline = {
      enabled = true,
      theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
      -- default/round/block/arrow separators work only for default statusline theme
      -- round and block will work for minimal theme only
      separator_style = "default",
      order = nil,
      modules = nil,
    },

    -- lazyload it when there are 1+ buffers
    tabufline = {
      enabled = true,
      lazyload = true,
      order = { "treeOffset", "buffers", "tabs", "btns" },
      modules = nil,
    },
  }

return M
