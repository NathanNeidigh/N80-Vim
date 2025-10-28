vim.api.nvim_create_autocmd("FileType", {
	pattern = {"verilog", "systemverilog"},
	callback = function()
		vim.cmd("setlocal expandtab")
		vim.cmd("setlocal shiftwidth=4")
	end})
