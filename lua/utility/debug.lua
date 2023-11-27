local functions = {}

functions.printtable = function(table)
    for k, v in ipairs(table) do
        print("hello world")
        print(k, " = ", v)
    end
end

return functions
