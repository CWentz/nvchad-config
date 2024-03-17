local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c_sharp",
        "json",
        -- "rust",
        "go",
        "gomod",
        "gosum",
        "proto",
        "bash",
        "gowork",
        "yaml",
        "python",
        "c",
        "cpp",
        "vimdoc",
        -- "gdscript", -- godot
        -- "gdresource", -- godot
        "markdown",
        "markdown_inline",
    },
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },

    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["aa"] = "@parameter.outer",
                ["ia"] = "@parameter.inner",
            },
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["]]"] = "@function.outer",
            },
            goto_previous_start = {
                ["[["] = "@function.outer",
            },
        },
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25,         -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- go
        "gopls",
        "goimports",

        -- bash stuff
        "shfmt",
        "shellcheck",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "json-lsp",

        -- c# stuff
        "omnisharp",

        -- shell stuff
        "shfmt",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
