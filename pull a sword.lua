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
	["autorebirth"] = false,
	["autoclick"] = false,
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
local walkspeedToggle = AutoValueSection:AddToggle({Name = "Auto walkspeed",Default = false,Callback = function(Value)
	settings.autowalkspeed = Value
	if settings.autowalkspeed == true then
		while task.wait(0.1) and settings.autowalkspeed == true do
			localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
		end
	end
end});
local jumppowerToggle = AutoValueSection:AddToggle({Name = "Auto jumppower",Default = false,Callback = function(Value)
	settings.autojumppower = Value
	if settings.autojumppower == true then
		while task.wait(0.1) and settings.autojumppower == true do
			localPlayer.Character.Humanoid.JumpPower = settings.jumppower
			localPlayer.Character.Humanoid.UseJumpPower = true
		end
	end
end});
local hipheightToggle = AutoValueSection:AddToggle({Name = "Auto hipheight",Default = false,Callback = function(Value)
	settings.autohipheight = Value
	if settings.autohipheight == true then
		while task.wait(0.1) and settings.autohipheight == true do
			localPlayer.Character.Humanoid.HipHeight = settings.hipheight
		end
	end
end});

local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local MainSection = mainTab:AddSection({
	Name = "Main Section"
})
local autoclickToggle = MainSection:AddToggle({Name = "Auto click",Default = false,Callback = function(Value)
	settings.autoclick = Value
	if settings.autoclick == true then
		while task.wait(0.1) and settings.autoclick == true do
			local ohString1 = "Click"
			local ohBoolean2 = false
			game:GetService("ReplicatedStorage").ClickEvent:FireServer(ohString1, ohBoolean2)
		end
	end
end});
local autorebirthToggle = MainSection:AddToggle({Name = "Auto rebirth",Default = false,Callback = function(Value)
	settings.autorebirth = Value
	if settings.autorebirth == true then
		while task.wait(0.1) and settings.autorebirth == true do
			local ohString1 = "MAX"
			game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.RebirthEvent:FireServer(ohString1)
			game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.SuperRebirthEvent:FireServer()
		end
	end
end});
local getgiftsButton = MainSection:AddButton({Name = "Get gifts",Callback = function()
	local rewardclaim = "Reward1"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)		
	local rewardclaim = "Reward2"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward3"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward4"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward5"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward6"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward7"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward8"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward9"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward10"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward11"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	local rewardclaim = "Reward12"
	game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
end});
local getbestclickerButton = MainSection:AddButton({Name = "Get best clicker",Callback = function()
	for _, v in pairs(game.ReplicatedStorage.Items.Pencil:GetDescendants()) do
		if v.Name == "PowerReq" then
			if localPlayer.Rock.Value >= v.Value then 
				local PencilSelected = game:GetService("ReplicatedStorage").Items.Pencil[v.Parent.Parent.Name]
				game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClickChangeEvent:FireServer(PencilSelected)
				task.wait()
			end 
		end
	end
end});
local redeemallcodesButton = MainSection:AddButton({Name = "Redeem all codes",Callback = function()
	for _, v in pairs(game.ReplicatedStorage.Codes:GetDescendants()) do
		if v.Name == "Code" then
			game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.CodeEventSR:FireServer(v.Value)
			task.wait()
		end
	end
end});
local RetroEventSection = mainTab:AddSection({
	Name = "Retro Event Section"
})
local autoclickToggle = RetroEventSection:AddToggle({Name = "Auto click",Default = false,Callback = function(Value)
	settings.autoclick = Value
	if settings.autoclick == true then
		while task.wait(0.1) and settings.autoclick == true do
			local ohString1 = "Click"
			local ohBoolean2 = true
			game:GetService("ReplicatedStorage").ClickEvent:FireServer(ohString1, ohBoolean2)
		end
	end
end});
