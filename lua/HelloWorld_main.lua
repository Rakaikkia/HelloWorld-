#!/usr/bin/env lua

local function safe_print(msg)
            local success, err = pcall(function()
                        print(msg)
                        io.flush()
                        if not io.output():write() then
                                    error("Output stream error")
                        end
            end)
            if not success then
                        error("Failed to print: " .. tostring(err))
            end
end

local ok, err = pcall(safe_print, "Hello World!")
if not ok then
            io.stderr:write("Output error: ", err, "\n")
            os.exit(1)
end
