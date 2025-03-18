return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local autotags = require("nvim-ts-autotag")

		autotags.setup({
			check_ts = true,
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},
		})
	end,
}
