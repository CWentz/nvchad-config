local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local pid = vim.fn.getpid()

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "gopls", "html", "tsserver", "jsonls", "cssls", "omnisharp" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end

lspconfig.omnisharp.setup {
    cmd = { "OmniSharp.exe", "--languageserver", "--hostPID", tostring(pid) },
    -- cmd = { "dotnet", vim.fn.stdpath "data" .. "\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll" },
    capabilities = capabilities,
    on_attach = on_attach,
    enable_editorconfig_support = true,
    handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").handlers,
    },
    enable_roslyn_analyzers = true,
    organize_imports_on_format = true,
    enable_import_completion = true,
    sdk_include_prereleases = true,
}

--
-- lspconfig.pyright.setup { blabla}
