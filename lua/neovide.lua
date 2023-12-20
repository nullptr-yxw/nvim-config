local M = {
    config = {
        o = {
            guifont = "Consolas Nerd Font Mono:h11",
        },
        g = {
            neovide_padding_top = 13,
            neovide_padding_bottom = 13,
            neovide_padding_right = 13,
            neovide_padding_left = 13,
        }
    },
}
M.init = function()
    if not vim.g.neovide then return end
	for k, v in pairs(M.config) do
		for m, n in pairs(v) do
			vim[k][m] = n
		end
	end
end
return M