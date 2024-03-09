local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local pid = vim.fn.getpid()

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "gopls", "html", "tsserver" }

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
	capabilities = capabilities,
  on_attach = on_attach,
  enable_editorconfig_support = true,
}

-- 
-- lspconfig.pyright.setup { blabla}
