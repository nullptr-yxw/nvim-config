return {
	"stevearc/stickybuf.nvim",
	config = function()
		local pinned_filetypes = {
			"Trouble",
			"neotest-summary",
			"startuptime",
			"toggleterm",
			"fugitive",
			"notify",
			"fugitiveblame",
			"GoogleKeepList",
			"GoogleKeepMenu",
			"NvimTree",
			"spectre_panel",
            "sagaoutline",
		}
		local pin = function(bufnr)
			local buftype = vim.bo[bufnr].buftype
			local filetype = vim.bo[bufnr].filetype
			local bufname = vim.api.nvim_buf_get_name(bufnr)
			if buftype == "help" or buftype == "quickfix" then
				return "buftype"
			elseif buftype == "prompt" or vim.startswith(bufname, "DAP ") then
				return "bufnr"
			elseif vim.tbl_contains(pinned_filetypes, filetype) then
				return "filetype"
			elseif bufname:match("Neogit.*Popup") then
				return "bufnr"
			elseif filetype == "defx" and (vim.wo.winfixwidth or vim.wo.winfixheight) then
				-- Only pin defx if it was opened as a split (has fixed height/width)
				return "filetype"
			elseif filetype == "fern" and (vim.wo.winfixwidth or vim.wo.winfixheight) then
				-- Only pin fern if it was opened as a split (has fixed height/width)
				return "filetype"
			elseif vim.startswith(filetype, "Neogit") and filetype ~= "NeogitCommitMessage" then
				if vim.fn.winnr("$") > 1 then
					return "filetype"
				end
			end
		end
        require("stickybuf").setup({
            get_auto_pin = pin,
        })
	end,
}
