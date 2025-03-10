return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	tag = '0.1.8',
	dependencies = { 
		'nvim-lua/plenary.nvim',
	},
	config = function()
		-- Require telescope
		local builtin = require("telescope.builtin")
		
		-- Leader keymaps
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	
		-- Custom keybinds
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fs', function()
			builtin.grep_string({ search = vim.fn.input( "grep > " ) })
		end)
	end,
}
