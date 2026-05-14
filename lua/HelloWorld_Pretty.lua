#!/usr/bin/env lua

local function say_hello()
            print("Hello World!")
end

local ok, err = pcall(say_hello)
if not ok then
            io.stderr:write("Error: ", err, "\n")
            os.exit(1)
end
