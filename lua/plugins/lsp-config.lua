return {
	{
		'mason-org/mason.nvim',
		opts = true,
	},
	{
		'mason-org/mason-lspconfig.nvim',
		opts = {
			auto_install = true,
			ensure_installed = {
				'lua_ls',
				'pyright',
				'clangd',
			},
		},
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.pyright.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
		end,
	},
}
