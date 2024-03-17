---@type MappingsTable
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },

        --  format with conform
        ["<leader>fm"] = {
            function()
                require("conform").format()
            end,
            "formatting",
        },

        ["<leader>u"] = { vim.cmd.UndotreeToggle, "Toggle Undotree" }

    },
    v = {
        [">"] = { ">gv", "indent" },
        ["J"] = { ":m '>+1<CR>gv=gv" },
        ["K"] = { ":m '<-2<CR>gv=gv" },
    },
}

-- more keybinds!

--M.eft = {
--  n = {
--    f = { "<Plug>(eft-f)", "eft-f" },
--    F = { "<Plug>(eft-F)", "eft-F" },
--    t = { "<Plug>(eft-t)", "eft-t" },
--    T = { "<Plug>(eft-T)", "eft-T" },
--    [";"] = { "<Plug>(eft-repeat)", "eft-repeat" },
--  },
--}

--M.accelerated_jk = {
--  n = {
--    j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
--    k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
--  },
--}

M.nvim_dap = {
    n = {
        ["<leader>dl"] = { "<cmd>lua require'dap'.step_into()<CR>", "debugger step into" },
        ["<leader>dj"] = { "<cmd>lua require'dap'.step_over()<CR>", "debugger step over" },
        ["<leader>dk"] = { "<cmd>lua require'dap'.step_out()<CR>", "debugger step out" },
        ["<leader>d<space>"] = { "<cmd>lua require'dap'.continue()<CR>", "debugger continue" },
        ["<leader>dbp"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "debugger toggle breakpoint" },
        ["<leader>dd"] = {
            "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
            "debugger set conditional breakpoint",
        },
        ["<leader>de"] = { "<cmd>lua require'dap'.terminate()<CR>", "debugger reset" },
        ["<leader>dr"] = { "<cmd>lua require'dap'.run_last()<CR>", "debugger reset" },
        -- map("n", "<leader>m", ":MaximizerToggle!<CR>", { noremap = true })
    },
}
M.telescope = {
    n = {
        ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols symbol_width=50 <CR>", "lsp document symbols" },
    },
}

M.hop = {
    n = {
        ["<leader><leader>w"] = { "<cmd> HopWord <CR>", "hint all words" },
        ["<leader><leader>b"] = { "<cmd> HopWord <CR>", "hint all words" },
        ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
        ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
    },
}

return M
