local localPlayer = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local settings = {
	["walkspeed"] = 16,
	["jumppower"] = 50,
	["gravity"] = 196.6,
	["hipheight"] = 2,
	["autowalkspeed"] = false,
	["autojumppower"] = false,
	["autohipheight"] = false,
	["autoDelTrains"] = false,
	["autoDelTrainsCd"] = 0.1,
	["autoSpawnTrains"] = false,
	["autoSpawnTrainsCd"] = 0.1,
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/lucasr125/Bracket_Orion/main/orionlib.lua')))();
local Window = OrionLib:MakeWindow({Name = gameName.." ; "..identifyexecutor(), HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = gameName});

local localTab = Window:MakeTab({Name = "Local",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local SetValueSection = localTab:AddSection({
	Name = "Set Values Section"
})
local walkspeedSlider = SetValueSection:AddSlider({Name = "Set walkspeed",Min = 0,Max = 1000,Default = settings.walkspeed,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "walkspeed",Callback = function(Value)
	settings.walkspeed = Value
	localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
end});
local jumppowerSlider = SetValueSection:AddSlider({Name = "Set jumppower",Min = 0,Max = 1000,Default = settings.jumppower,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "jumppower",Callback = function(Value)
	settings.jumppower = Value
	localPlayer.Character.Humanoid.JumpPower = settings.jumppower
	localPlayer.Character.Humanoid.UseJumpPower = true
end});
local hipheightSlider = SetValueSection:AddSlider({Name = "Set hipheight",Min = 0,Max = 50,Default = settings.hipheight,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "hipheight",Callback = function(Value)
	settings.hipheight = Value
	localPlayer.Character.Humanoid.HipHeight = settings.hipheight
end});
local gravitySlider = SetValueSection:AddSlider({Name = "Set gravity",Min = 0,Max = 1000,Default = settings.gravity,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "gravity",Callback = function(Value)
	settings.gravity = Value
	game.Workspace.Gravity = settings.gravity
end});
local AutoValueSection = localTab:AddSection({
	Name = "Auto Values Section"
})
local walkspeedToggle = AutoValueSection:AddToggle({Name = "Auto walkspeed",Default = settings.autowalkspeed,Callback = function(Value)
	settings.autowalkspeed = Value
	if settings.autowalkspeed == true then
		while task.wait(0.1) and settings.autowalkspeed == true do
			localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
		end
	end
end});
local jumppowerToggle = AutoValueSection:AddToggle({Name = "Auto jumppower",Default = settings.autojumppower,Callback = function(Value)
	settings.autojumppower = Value
	if settings.autojumppower == true then
		while task.wait(0.1) and settings.autojumppower == true do
			localPlayer.Character.Humanoid.JumpPower = settings.jumppower
			localPlayer.Character.Humanoid.UseJumpPower = true
		end
	end
end});
local hipheightToggle = AutoValueSection:AddToggle({Name = "Auto hipheight",Default = settings.autohipheight,Callback = function(Value)
	settings.autohipheight = Value
	if settings.autohipheight == true then
		while task.wait(0.1) and settings.autohipheight == true do
			localPlayer.Character.Humanoid.HipHeight = settings.hipheight
		end
	end
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
local autoDelTrainsCdSlider = mainTab:AddSlider({Name = "Set delete trains cooldown",Min = 0,Max = 10,Default = settings.autoDelTrainsCd,Color = Color3.fromRGB(255,255,255),Increment = 0.01,ValueName = "cooldown",Callback = function(Value)
	settings.autoDelTrainsCd = Value
end});
local autoDelTrains = mainTab:AddToggle({Name = "Auto delete trains",Default = settings.autoDelTrains,Callback = function(Value)
	settings.autoDelTrains = Value
	if settings.autoDelTrains == true then
		while task.wait(settings.autoDelTrainsCd) and settings.autoDelTrains == true do
			for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        if v.BrickColor == BrickColor.new("Really red") and not v:FindFirstChildWhichIsA("SurfaceGui") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
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
local autoSpawnTrainsCdSlider = mainTab:AddSlider({Name = "Set spawn trains cooldown",Min = 0,Max = 10,Default = settings.autoSpawnTrainsCd,Color = Color3.fromRGB(255,255,255),Increment = 0.01,ValueName = "cooldown",Callback = function(Value)
	settings.autoSpawnTrainsCd = Value
end});
local autoSpawnTrains = mainTab:AddToggle({Name = "Auto spawn trains",Default = settings.autoSpawnTrains,Callback = function(Value)
	settings.autoSpawnTrains = Value
	if settings.autoSpawnTrains == true then
		while task.wait(settings.autoSpawnTrainsCd) and settings.autoSpawnTrains == true do
			for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        local surfaceGui = v:FindFirstChildWhichIsA("SurfaceGui")
        if surfaceGui and surfaceGui.TextLabel and surfaceGui.TextLabel.Text and string.find(surfaceGui.TextLabel.Text, "SPAWN") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
end
		end
	end
end});
