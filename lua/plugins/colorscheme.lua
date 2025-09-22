return {
    {
	"rebelot/kanagawa.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
	    -- load the colorscheme here
	    require("kanagawa").load("wave")
	end,
    },
    {
	'sainnhe/gruvbox-material',
	lazy = false,
	priority = 1001,
	config = function()
	    -- Optional configuration
	    vim.g.gruvbox_material_enable_italic = true
	    vim.cmd.colorscheme('gruvbox-material')
	end
    }
}
