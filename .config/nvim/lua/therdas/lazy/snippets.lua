return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)

	-- install jsregexp (optional!).
	build = "make install_jsregexp",

	dependencies = { "rafamadriz/friendly-snippets" },

	config = function()
		local ls = require("luasnip")
		ls.filetype_extend("javascript", { "jsdoc" })

		ls.config.set_config({
			history = true,
			updateevents = "TextChanged,TextChangedI",
			override_builtin = true,
		})

		for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("snippets/*.lua", true)) do
			loadfile(ft_path())
		end

		vim.keymap.set({ "i", "s" }, "<c-k>", function()
			return vim.snippet.active { direction = 1 } and vim.snippet.jump(1)
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<c-j>", function()
			return vim.snippet.active { direction = -1 } and vim.snippet.jump(-1)
		end, { silent = true })
	end
}
