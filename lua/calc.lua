-- modules
local http = require 'socket.http'
local url  = require 'socket.url'
local json = require 'json'


if not arg[2] then
    print("This command requires an argument")
else
    local result = http.request('http://www.google.com/ig/calculator?q=' .. url.escape(arg[2]))
    local result = json.decode(result)
    local err    = result.error

    if err ~= "" then
        print("sry but na, nice try tho")
    else
        print(result.lhs .. " = " .. result.rhs)
    end
end
