local settings = {
  ["walkspeed"] = 16,
  ["jumppower"] = 50,
  ["gravity"] = 196.6,
  ["hipheight"] = 2,
}

local localPlayer = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/lucasr125/Bracket_Orion/main/orionlib.lua')))();
local Window = OrionLib:MakeWindow({Name = gameName.." ; "..identifyexecutor(), HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = identifyexecutor().." ; "..gameName});

local localTab = Window:MakeTab({Name = "Local",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local walkspeedSlider = localTab:AddSlider({Name = "Set walkspeed",Min = 0,Max = 1000,Default = settings.walkspeed,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "walkspeed",Callback = function(Value)
  settings.walkspeed = Value
  localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
end});
local jumppowerSlider = localTab:AddSlider({Name = "Set jumppower",Min = 0,Max = 1000,Default = settings.jumppower,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "jumppower",Callback = function(Value)
  settings.jumppower = Value
  localPlayer.Character.Humanoid.JumpPower = settings.jumppower
  localPlayer.Character.Humanoid.UseJumpPower = true
end});
local hipheightSlider = localTab:AddSlider({Name = "Set hipheight",Min = 0,Max = 50,Default = settings.hipheight,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "hipheight",Callback = function(Value)
  settings.hipheight = Value
  localPlayer.Character.Humanoid.HipHeight = settings.hipheight
end});
local gravitySlider = localTab:AddSlider({Name = "Set gravity",Min = 0,Max = 1000,Default = settings.gravity,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "gravity",Callback = function(Value)
  settings.gravity = Value
  game.Workspace.Gravity = settings.gravity
end});

local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local getBadges = mainTab:AddButton({Name = "Get all badges",Callback = function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "GOALLine" and v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
    end
end
end});
local deleteAllTrains = mainTab:AddButton({Name = "Delete all trains",Callback = function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        if v.BrickColor == BrickColor.new("Really red") and not v:FindFirstChildWhichIsA("SurfaceGui") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
end
end});
local spawnFreeTrains = mainTab:AddButton({Name = "Spawn free trains",Callback = function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        local surfaceGui = v:FindFirstChildWhichIsA("SurfaceGui")
        if surfaceGui and surfaceGui.TextLabel and surfaceGui.TextLabel.Text and string.find(surfaceGui.TextLabel.Text, "SPAWN") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
end
end});
