local M = {}
local language_list = {
    "c",
    "cpp",
    "rust",
}
local c_proj_list = {
    "makefile",
    "cmake",
    "xmake",
}
local cpp_proj_list = c_proj_list
local create_select_opts = function(name)
    return {
        prompt = "Select a " .. name,
        format_item = function(item)
            return item .. "project"
        end,
    }
end
M.create_project = function()
    vim.ui.select(language_list, create_select_opts("project"), function(choice)
        if choice == "c" then
            M.create_c_project()
        elseif choice == "cpp" then
            M.create_cpp_project()
        elseif choice == "rust" then
            M.create_rust_project()
        end
    end)
end
M.create_c_project = function()
    vim.ui.select(c_proj_list, create_select_opts("c project"), function(choice)
        if choice == "makefile" then
            M.create_c_makefile_project()
        elseif choice == "cmake" then
            M.create_c_cmake_project()
        elseif choice == "xmake" then
            M.create_c_xmake_project()
        end
    end)
end
