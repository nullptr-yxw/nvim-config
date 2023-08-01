return {
    "nvim-treesitter/nvim-treesitter",
    version = "*", -- last release is way too old and doesn't work on Windows
    lazy = true,
    enabled = true,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "cpp", "lua", "rust", "go", "python", "vim", "vimdoc", "query", "ocaml" },
            sync_install = true,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end,

}
