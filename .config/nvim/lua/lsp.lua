vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

-- removes vim global error messages
vim.lsp.config("lua_ls",
	{
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" }
				}
			}
		}
	})

vim.lsp.enable({ "lua_ls", "nixd" })

vim.diagnostic.config({
	virtual_lines = true,
	-- virtual_text = true,
	underline = { severity = vim.diagnostic.severity.ERROR },
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "if_many",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = '󰅚 ',
			[vim.diagnostic.severity.WARN] = '󰀪 ',
			[vim.diagnostic.severity.INFO] = '󰋽 ',
			[vim.diagnostic.severity.HINT] = '󰌶 ',
		},
		numh1 = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		}
	},
})
