--game : https://www.roblox.com/games/6704182071/X2-COINS-Cooking-Simulator
-- Coded by : Keathunsar : https://github.com/dady172172/Roblox-Cheats
-- GUI made by : https://v3rmillion.net/member.php?action=profile&uid=507120
--Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Cooking Simulator") -- Creates the window

local b = w:CreateFolder("Farm") -- Creates the folder(U will put here your buttons,etc)

---- vars ----
local savedHome = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame


b:Button("Feed The God!!",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4, 17, -25)
end)

b:Button("teleport Home",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedHome
end)

b:Button("Save Home",function()
	savedHome = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
b:Button("Pickup Random Food",function()
    local modelV = game:GetService("Workspace").ConveyorFoods:FindFirstChildWhichIsA('Model')
    if modelV:FindFirstChild('IdValue') then
        local z = modelV:FindFirstChild('IdValue').Value
        local y = modelV:FindFirstChild('ConfigIdValue').Value
        game:GetService('ReplicatedStorage').RemoteEvent.pickUpFood:FireServer(z, y)
    end
end)
local openEggBool = false
b:Toggle("Toggle",function(bool)
    openEggBool = bool

end)
local openEggCoro = coroutine.create(function()
    while wait() do
        if openEggBool then
            game:GetService("ReplicatedStorage").RemoteEvent.RandomPickPets:FireServer(1, true, 33358)
        end
    end
end)
coroutine.resume(openEggCoro)


--[[
b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Button",function()
    print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGui()


How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]