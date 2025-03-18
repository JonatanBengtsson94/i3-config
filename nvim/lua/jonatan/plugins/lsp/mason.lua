return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		--import mason
		local mason = require("mason")

		--import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				"csharp_ls",
				"jedi_language_server",
				"biome",
				"html",
				"cssls",
				"kotlin_language_server",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"prettierd",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
