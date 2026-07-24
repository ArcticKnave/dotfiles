-- -- Omnisearch auto on type - Used for native autocomplete, no need with blink.cmp
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 		callback = function(ev)
-- 				local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 				if client:supports_method("textDocument/completion") then
-- 						vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
-- 				end
-- 		end,
-- })
-- vim.opt.completeopt="menuone,noselect,popup" -- prevents autotrigger from taking the first result

local general = vim.api.nvim_create_augroup("General", { clear = true })
local lsp = vim.api.nvim_create_augroup("Lsp", { clear = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = general,
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
	group = general,
	pattern = "*",
	callback = function()
		local save_cursor = vim.fn.getpos(".")
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.setpos(".", save_cursor)
	end,
	desc = "Remove trailing whitespace",
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp,
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})

vim.api.nvim_create_autocmd("User", {
	pattern = "ObsidianNoteEnter",
	callback = function()
		vim.o.winborder = "none"
		require("zen-mode").toggle()
		vim.o.wrap = true
		vim.o.linebreak = true
		-- vim.o.spell = true
	end,
})


vim.api.nvim_create_autocmd("User", {
	pattern = "ObsidianNoteLeave",
	callback = function()
		vim.o.winborder = "rounded"
		require("zen-mode").toggle()
		vim.o.wrap = false
		vim.o.linebreak = false
		-- vim.o.spell = false
	end,
})
