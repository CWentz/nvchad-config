local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = false,
        config = function()
            require "custom.configs.treesitter-context"
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },


    {
        "laytan/cloak.nvim",
        lazy = false,
        config = function()
            require "custom.configs.cloak-conf"
        end,
    },


    {
        "Hoffs/omnisharp-extended-lsp.nvim",
        lazy = true,
        config = function()
        end,
    },
    -- {
    --     "github/copilot.vim",
    --     lazy = false,
    -- },
    -- {
    --     "nvim-treesitter/playground",
    --     opts = overrides.nvimtree.playground,
    -- },

    -- Install a plugin
    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },

    {
        "stevearc/conform.nvim",
        --  for users those who want auto-save conform + lazyloading!
        -- event = "BufWritePre"
        config = function()
            require "custom.configs.conform"
        end,
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require "custom.configs.dap"
        end,
    },
    {
        "mbbill/undotree",
        lazy = false,
        config = function()

        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            -- require("mfussenegger/nvim-dap")
            require("dapui").setup()
        end,
        -- requires = { "mfussenegger/nvim-dap" }
    },
    {

        "theHamsta/nvim-dap-virtual-text",
        config = function()
            -- require("mfussenegger/nvim-dap")
            require("nvim-dap-virtual-text").setup()
        end,
        -- requires = { "mfussenegger/nvim-dap" },
    },
    {
        "folke/neodev.nvim",
        opts = {},
    },

    {
        "tpope/vim-fugitive",
        lazy = false,

    },

    -- {
    --     "tpope/vim-surround",
    --     lazy = false,
    -- },

    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

    -- All NvChad plugins are lazy-loaded by default
    -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
    -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
    -- {
    --   "mg979/vim-visual-multi",
    --   lazy = false,
    -- }
}

return plugins
