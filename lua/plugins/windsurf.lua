return {
	"Exafunction/windsurf.vim",
	event = "InsertEnter", -- Lazy-load when entering insert mode
	config = function()
		vim.g.codeium_disable_bindings = 1

		-- Define your own mappings (example)
		vim.keymap.set('i', '<S-Tab>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
		vim.keymap.set('i', '<C-;>', function() return vim.fn end, { expr = true, silent = true })
		vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
			{ expr = true, silent = true })
		vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
	end,
}
