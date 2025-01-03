return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
{
   "williamboman/mason.nvim",
   opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "html-lsp",
      "css-lsp",
      "prettier",
      "pyre",
      "sqlls",
      "sql-formatter",
    },
   },
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python","sql"
  		},
  	},
  },
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'karb94/neoscroll.nvim',

{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

    end
  },

{
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql', 'bqsql'}, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    -- vim.g.db_ui_default_query = 'SELECT * FROM "{table}"'
    vim.g.db_ui_save_location = '~/queries/'
  end,
},
{
      "hrsh7th/nvim-cmp",
      dependencies = {
        'kristijanhusak/vim-dadbod-completion',
      },
      -- override the options table that is used in the `require("cmp").setup()` call
      opts = function(_, opts)
        -- opts parameter is the default options table
        -- the function is lazy loaded so cmp is able to be required
        local cmp = require "cmp"
        -- modify the sources part of the options table
        opts.sources = cmp.config.sources {
          { name = "nvim_lsp", priority = 1000 },
          { name = "luasnip", priority = 750 },
          { name = "buffer", priority = 500 },
          { name = "path", priority = 250 },
          { name = "vim-dadbod-completion", priority = 700 }, -- add new source
        }
        -- return the new table to be used
        return opts
      end,
    }
-- { -- optional saghen/blink.cmp completion source
--     'saghen/blink.cmp',
--     opts = {
--       sources = {
--         -- add vim-dadbod-completion to your completion providers
--         default = { "lsp", "path", "snippets", "buffer", "dadbod" },
--         providers = {
--           dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
--         },
--       },
--     },
--   }
}
