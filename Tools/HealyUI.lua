--Made by : https://v3rmillion.net/member.php?action=profile&uid=1236949

local Lib = loadstring(game:HttpGet("http://www.narwhalhacks.xyz/UI/HealyUILib.lua", true))()

local Window = Lib:Window("HI")
local Window2 = Lib:Window("HI2")
local Window3 = Lib:Window("HI3", Color3.fromRGB(255, 0, 0))

Window:Button("HI", function()
   print("HI")
end)

Window:Toggle("BYE", function(state)
   print(state)
end)

Window:Dropdown("SUP", {"1", "2", "3"}, function(option)
   print(option)
end)

Window:Button("HI", function()
   print("HI")
end)

Window:Toggle("BYE", function(state)
   print(state)
end)

Window:Dropdown("SUP", {"1", "2", "3"}, function(option)
   print(option)
end)

Window2:Button("HI", function()
   print("HI")
end)

Window2:Toggle("BYE", function(state)
   print(state)
end)

Window:Dropdown("SUP", {"1", "2", "3"}, function(option)
   print(option)
end)

Window3:Button("HI", function()
   print("HI")
end)

Window2:Toggle("BYE", function(state)
   print(state)
end)

Window:Dropdown("SUP", {"1", "2", "3"}, function(option)
   print(option)
end)
