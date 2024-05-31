local settings = {
  ["walkspeed"] = 16,
  ["jumppower"] = 50,
  ["gravity"] = 196.6,
  ["hipheight"] = 2,
  ["autoCollectMoney"] = false,
  ["autoBuyItems"] = false
}

local localPlayer = game.Players.LocalPlayer
local tycoonOwned = localPlayer:FindFirstChild("TycoonOwned").Value
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
local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998", PremiumOnly = false});
local collectMoney = mainTab:AddToggle({Name = "Auto collect money",Default = false,Callback = function(Value)
	settings.autoCollectMoney = Value
	while settings.autoCollectMoney do
		if settings.autoCollectMoney == true and v.BrickColor ~= BrickColor.new("Really red") then
			local collector = tycoonOwned.Build.Collect.Part
			firetouchinterest(localPlayer.Character.HumanoidRootPart, collector, 1)
			firetouchinterest(localPlayer.Character.HumanoidRootPart, collector, 0)
			task.wait(0.1)
		end
	end
end});
local buyItems = mainTab:AddToggle({Name = "Auto buy items",Default = false,Callback = function(Value)
	settings.autoBuyItems = Value
	while settings.autoBuyItems do
		if settings.autoBuyItems == true then
			for i, v in pairs(tycoonOwned.Buttons:GetDescendants()) do
				if v.Name == "Part" and v.Parent.Name == "Button" and v:FindFirstChild("TouchInterest") and v.BrickColor == BrickColor.new("Shamrock") then
					firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 1)
					firetouchinterest(localPlayer.Character.HumanoidRootPart, v, 0)
					task.wait(0.1)
				end
			end
		end
	end
end});
