return {
	{
		"mason-org/mason.nvim",
		opts = true,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
			ensure_installed = {
				"lua_ls",
				"pyright",
				"clangd",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})
			-- vim.lsp.config("pyright")
			-- vim.lsp.config("clangd")
			-- vim.lsp.config("verible")

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("clangd")
			vim.lsp.enable("verible")
		end,
	},
}
