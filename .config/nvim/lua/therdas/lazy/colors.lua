set_color_scheme = function (name, transparent)
	name = name or "tokyonight-night"

	vim.cmd.colorscheme(name)
	if (transparent == true) then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			  require("tokyonight").setup({
				style = "night",
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },

					functions = {},
					variables = {},

					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				}
			})
		end
	},
}
