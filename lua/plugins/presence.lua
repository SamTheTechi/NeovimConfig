return {
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			auto_update = true,
			neovim_image_text = "Neovim",
			main_image = "neovim",
			editing_text = "Editing %s",
			file_explorer_text = "Looking through %s",
			plugin_manager_text = "Managing plugins",
			reading_text = "Reading %s",
			idle_text = "Chilling in Neovim...",
		})
	end
}
