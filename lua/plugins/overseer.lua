return {
    "stevearc/overseer.nvim",
    enabled = false,
    config = function()
        require("overseer").setup({
            templates = { "builtin", "user.xmake_run" },
        })
    end,
}
