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
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
				capabilities = capabilities,
			})
			vim.lsp.config("pyright", { capabilities = capabilities })
			vim.lsp.config("clangd", { capabilities = capabilities })
			vim.lsp.config("verible", { capabilities = capabilities })

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("clangd")
			vim.lsp.enable("verible")
		end,
	},
}
