local M = {}

M.adapter = {
  	type = "executable",
	cocommand = "D:\\Source\\netcoredbg\\netcoredbg.exe",
	naargs = {'--interpreter=vscode'},
}

-- M.config = {
--     {
--         type = "coreclr",
--         name = "launch - netcoredbg",
--         request = "launch",
--         program = function()
--             return "D:\\Source\\WentzPro\\BillionLines\\BillionLines\\bin\\Debug\\net8.0\\BillionLines.dll"
--             -- return vim.fn.input('Path to dll', vim.fn.getcwd() .. '\\bin\\Debug\\', 'file')
--         end,
--     }
-- }
--

return M
