local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stebulous/solaris-ui-lib/main/source.lua"))()

--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = SolarisLib:New({
  Name = "Tapping Simulator",
  FolderToSave = "SolarisLibStuff"
})

--win:Tab(title <string>)
local tab = win:Tab("Auto-Farm")

--tab:Section(title <string>)
local sec = tab:Section("Auto Farm")

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
local toggle = sec:Toggle("Auto Tap", false,"Toggle", function(t)
  _G.Tap = t
while _G.Tap == true do
    -- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.Tap:FireServer()


wait()
end
end)

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
local toggle = sec:Toggle("Auto Rebirth", false,"Toggle", function(t)
  _G.Rebirth = t
while _G.Rebirth == true do
    -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = 500
}

game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))

wait()
end
end)

--win:Tab(title <string>)
local tab = win:Tab("Hatch_Egg")

--tab:Section(title <string>)
local sec = tab:Section("HatchEgg")

local toggle = sec:Toggle("Desert Egg", false,"Toggle", function(t)
  _G.HatchEgg = t
while _G.HatchEgg == true do
    -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = {},
    [2] = "Desert Egg",
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))

wait()
end
end)

--win:Tab(title <string>)
local tab = win:Tab("World_All")

--tab:Section(title <string>)
local sec = tab:Section("World Boost")
--DarkHeart
sec:Button("DarkHeart [200%]", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-451.711792, 17169.8223, -553.907959, -0.309079856, 5.33587254e-08, 0.951036096, 8.1645112e-08, 1, -2.95718205e-08, -0.951036096, 6.850739e-08, -0.309079856)
end)
