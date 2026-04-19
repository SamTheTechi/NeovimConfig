-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
-- 			bold = true,
-- 			italic = {
-- 				strings = true,
-- 				emphasis = true,
-- 				comments = true,
-- 				operators = false,
-- 				folds = true,
-- 			},
-- 			strikethrough = true,
-- 			contrast = "soft",
-- 			palette_overrides = {},
-- 			overrides = {},
-- 			dim_inactive = false,
-- 			transparent_mode = true,
-- 		})
-- 		vim.cmd("colorscheme gruvbox")
-- 	end,
-- }

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			style = "moon", -- options: "night", "storm", "moon", "day"
-- 			transparent = true,
-- 			styles = {
-- 				comments = { italic = true },
-- 			},
-- 		})
-- 		vim.cmd("colorscheme tokyonight")
-- 	end,
-- }

--return {
--	"thallada/farout.nvim",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		require("farout").setup({
--			style = "night",
--			light_style = "day",
--			transparent = true,
--			terminal_colors = true,
--			styles = {
--				comments = { italic = true },
--				keywords = { italic = true },
--				functions = {},
--				variables = {},
--				sidebars = "transparent",
--				floats = "transparent",
--			},
--			sidebars = { "qf", "help" },
--			day_brightness = 0.1,
--		})
--		vim.cmd("colorscheme farout")
--	end,
--}
--

return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			show_end_of_buffer = false,
			term_colors = false,
			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.15,
			},
			styles = {
				comments = { "italic" },
			},
			color_overrides = {},
			custom_highlights = {},
			default_integrations = true,
			integrations = {
				harpoon = true,
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
