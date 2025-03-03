local options = {
	enabled = true,
	cloak_character = "*",
	cloak_length = "8",
	try_all_patterns = true,
	cloak_telescope = true,
	cloak_on_leave = false,
	patterns = {
		{
			file_pattern = '.env*',
			cloak_pattern = '=.+',
			replace = nil
		},
		{
			file_pattern = '.ini',
			cloak_pattern = {
				'key=.*',
				'key:.*',
			}
		},
		{
			file_pattern = '.ini',
			cloak_pattern = {
				'key=.*',
				'key:.*',
			}
		}
	}
}

return {
	"laytan/cloak.nvim",
	event = "VeryLazy",
	config = function()
		require("cloak").setup(options)
	end,
}
