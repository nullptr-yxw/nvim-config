return {
    "nathom/filetype.nvim",
    version = "*",
    lazy = true,
    enabled = true,
    opts = {
        overrides = {
            extensions = {
                -- Set the filetype of *.pn files to potion
                mpp = "cpp",
                ixx = "cpp",
                cppm = "cpp",
                mxx = "cpp",
            },
            literal = {
                -- Set the filetype of files named "MyBackupFile" to lua
            },
            complex = {
                -- Set the filetype of any full filename matching the regex to gitconfig
                [".clang-format"] = "yaml", -- Included in the plugin
                [".clang-tidy"] = "yaml",   -- Included in the plugin
            },

        },
    },
}
