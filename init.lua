local autocmd = vim.api.nvim_create_autocmd

if vim.fn.has('win32') == 1 then
    vim.o.shell = 'powershell'
else
    vim.o.shell = 'pwsh'
end

vim.o.shellcmdflag =
'-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.o.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellquote = "\""
vim.o.shellxquote = ''
vim.o.shellslash = false

vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"


autocmd("BufWritePre", {
    pattern = "*",
    -- pattern = "*.go",
    callback = function()
        vim.lsp.buf.format { async = false }
    end,
})


-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
