local localPlayer = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local tycoonId = localPlayer:GetAttribute("TycoonID")
local tycoon = game.Workspace.Tycoons[tycoonId]

local settings = {
	["walkspeed"] = 16,
	["jumppower"] = 50,
	["gravity"] = 196.6,
	["hipheight"] = 0,
	["autowalkspeed"] = false,
	["autojumppower"] = false,
	["autohipheight"] = false,
	["buyitemcooldown"] = 1,
	["autobuyitem"] = false,
	["autorebirth"] = false,
	["disablenotifications"] = false,
	["setbestindustry"] = false,
	["setindustrycooldown"] = 1
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
local TycoonSection = mainTab:AddSection({
	Name = "Tycoon Section"
})

local buyitemcooldownSlider = TycoonSection:AddSlider({Name = "Set buy item cooldown",Min = 0.1,Max = 10,Default = settings.buyitemcooldown,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "cooldown",Callback = function(Value)
	settings.buyitemcooldown = Value
end});
local autobuyitemToggle = TycoonSection:AddToggle({Name = "Auto buy item",Default = settings.autobuyitem,Callback = function(Value)
	settings.autobuyitem = Value
	if settings.autobuyitem == true then
		while task.wait(settings.buyitemcooldown) and settings.autobuyitem == true do
			for i, v in pairs(tycoon.PurchaseableModels:GetDescendants()) do
				if v.ClassName == "TouchTransmitter" and v.Parent.ClassName == "Part" then
					firetouchinterest(localPlayer.Character.HumanoidRootPart, v.Parent, 0)
					firetouchinterest(localPlayer.Character.HumanoidRootPart, v.Parent, 1)
				end
			end
		end
	end
end});
local autorebirthToggle = TycoonSection:AddToggle({Name = "Auto rebirth",Default = settings.autorebirth,Callback = function(Value)
	settings.autorebirth = Value
	if settings.autorebirth == true then
		while task.wait(0.1) and settings.autorebirth == true do
			if localPlayer.PlayerGui.MainUI.ActionHotbar.Rebirth.HotspotHighlight.Visible == true then
				if localPlayer.leaderstats.Rebirths.Value == 7 then
					game.ReplicatedStorage.RemoteFunctions.Ascend:InvokeServer()
				else
					game.ReplicatedStorage.RemoteFunctions.Rebirth:InvokeServer()
				end
			end
		end
	end
end});
local disablenotificationsToggle = TycoonSection:AddToggle({Name = "Disable notifications",Default = settings.disablenotifications,Callback = function(Value)
	settings.disablenotifications = Value
	localPlayer.PlayerGui.MainUI.PromptList.Visible = settings.disablenotifications
    if settings.disablenotifications == true and not game.SoundService:FindFirstChild("PLAYING") then
        local PLAYING_folder = Instance.new("Folder", game.SoundService)
        PLAYING_folder.Name = "PLAYING"
    elseif settings.disablenotifications == false and game.SoundService:FindFirstChild("PLAYING") then
        game.SoundService:FindFirstChild("PLAYING"):Destroy()
    end
end});
local mainF = localPlayer:WaitForChild("PlayerGui"):WaitForChild("MainUI")

local tycoonFrame = mainF:WaitForChild("TycoonFrame")
local bars = tycoonFrame:WaitForChild("Bars")

local r1 = bars:WaitForChild("Electric")
local r2 = bars:WaitForChild("Farming")
local r3 = bars:WaitForChild("Nuclear")

local function setBestIndustry()
    local x1 = r1:WaitForChild("Bar").AbsoluteSize.X
    local x2 = r2:WaitForChild("Bar").AbsoluteSize.X
    local x3 = r3:WaitForChild("Bar").AbsoluteSize.X

    local bestIndustry
    if x1 > x2 and x1 > x3 then
        bestIndustry = "Electric"
    elseif x2 > x1 and x2 > x3 then
        bestIndustry = "Farming"
    elseif x3 > x1 and x3 > x2 then
        bestIndustry = "Nuclear"
    end

    if bestIndustry then
        local args = { [1] = bestIndustry }
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SelectNewIndusty"):FireServer(unpack(args))
    end
end
local setindustrycooldownSlider = TycoonSection:AddSlider({Name = "Set industry cooldown",Min = 0.1,Max = 2,Default = settings.setindustrycooldown,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "cooldown",Callback = function(Value)
	settings.setindustrycooldown = Value
end});
local setbestindustryToggle = TycoonSection:AddToggle({Name = "Set best industry",Default = settings.setbestindustry,Callback = function(Value)
	settings.setbestindustry = Value
	if settings.setbestindustry == true then
		while task.wait(settings.setindustrycooldown) and settings.setbestindustry == true do
			setBestIndustry()
		end
	end
end});
