local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

require("lualine").setup({
		options = {
			theme = 'gruvbox'
		},
		tabline = {
			lualine_a = { "buffers" }
		}
	})
