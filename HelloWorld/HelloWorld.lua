--SLASH_HELLO02 = "/test" //didnt work probably cuz of conflict with other addons
SLASH_TEST1 = "/helloworld"
SLASH_TEST2 = "/test"

local function displayMessage(name)

local greeting = "Hello, " .. name .. "!"
message(greeting)

end


local function HelloWorldHandler(name)

    local nameExists = string.len(name)>0

    if (nameExists) then
        displayMessage(name)
    else
        displayMessage(UnitName("player"))
    end
    
end

SlashCmdList["TEST"] = HelloWorldHandler


