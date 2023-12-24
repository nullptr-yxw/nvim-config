return {
	"nvimdev/lspsaga.nvim",
	config = function()
		local load_autocmds = require("utility.functions").load_autocmds
		require("lspsaga").setup()
		load_autocmds("lspsagaconf", {
			BufHidden = {
				callback = function(Buffer)
                    if vim.bo[Buffer.buf].filetype ~= "sagaoutline" then
                        return
                    end
					local ctx = require("lspsaga.symbol.outline")
					for k, _ in pairs(ctx) do
						ctx[k] = nil
					end
					vim.api.nvim_clear_autocmds({
						group = "outline",
					})
				end,
			},
		})
	end,
}
