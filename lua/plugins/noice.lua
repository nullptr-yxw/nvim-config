return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		--        "rcarriga/nvim-notify",
	},
	opts = {
		views = {
			cmdline_popup = {
				border = {
					style = "single",
				},
				win_options = {
					--    winhighlight = "FloatBorder:SpecialChar",
				},
			},
		},
		cmdline = {
			format = {
				checkhealth = {
					pattern = "^:%s*chec?k?h?e?a?l?t?h?%s+",
					icon = "",
				},
				createnewfile = {
					pattern = "^:%s*ed?i?t?%s+",
					icon = "",
				},
			},
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = true,
		},
	},
}
