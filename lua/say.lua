str = arg[1]
if string.match(arg[1], "[k]sadbot") then
    print("nise try but na")
else
    print(string.format(arg[1]:match( "^%s*(.-)%s*$" )))
end
