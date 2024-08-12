local tycoon = game.Players.LocalPlayer:WaitForChild("Tycoon").Value
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
    ["autogetorbs"] = false,
    ["getorbscooldown"] = 0.01,
    ["autogetairdrops"] = false,
    ["autoobby"] = false,
    ["obbyboost"] = "Luck",
    ["autobuy"] = false,
    ["autosell"] = false,
	["autorebirth"] = false,
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/lucasr125/Bracket_Orion/main/orionlib.lua')))();
local Window = OrionLib:MakeWindow({Name = gameName.." ; "..identifyexecutor(), HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = gameName});

local localTab = Window:MakeTab({Name = "Local",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local SetValueSection = localTab:AddSection({
	Name = "Set Values Section"
})
local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local TycoonSection = mainTab:AddSection({
	Name = "Tycoon Section"
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

local autoobbyToggle = TycoonSection:AddToggle({Name = "Auto obby",Default = settings["autoobby"],Callback = function(Value)
	settings["autoobby"] = Value
	if settings["autoobby"] == true then
		while task.wait(0.1) and settings["autoobby"] == true do
			if settings["obbyboost"] == "Luck" then
                firetouchinterest(game.Workspace:FindFirstChild("Obby").RewardButtons.Luck.Button, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
            elseif settings["obbyboost"] == "Money" then
                firetouchinterest(game.Workspace:FindFirstChild("Obby").RewardButtons.Money.Button, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
            elseif settings["obbyboost"] == "ProcessSpeed" then
                firetouchinterest(game.Workspace:FindFirstChild("Obby").RewardButtons.ProcessSpeed.Button, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
            end
		end
	end
end});
local obbyboostDropdown = TycoonSection:AddDropdown({Name = "Select obby boost",Default = "Money",Options = {"Luck", "Money", "ProcessSpeed"},Callback = function(Value)
    settings["obbyboost"] = Value
end});

local autogetorbsToggle = TycoonSection:AddToggle({Name = "Auto get orbs", Default = settings["autogetorbs"], Callback = function(Value)
	settings["autogetorbs"] = Value
	if settings["autogetorbs"] == true then
		while task.wait(settings["getorbscooldown"]) and settings["autogetorbs"] == true do
			for i, v in pairs(tycoon:FindFirstChild("Drops"):GetChildren()) do 
                if v.ClassName == "Part" then
                    v.CFrame = game.Players.LocalPlayer.Character.Pickup.CFrame
                    task.wait()
                end
            end
		end
	end
end});
local getorbscooldownSlider = TycoonSection:AddSlider({Name = "Set orb cooldown",Min = 0,Max = 10,Default = settings["getorbscooldown"],Color = Color3.fromRGB(255,255,255),Increment = 0.01,ValueName = "cooldown",Callback = function(Value)
	settings["getorbscooldown"] = Value
end});

local autogetairdropsToggle = TycoonSection:AddToggle({Name = "Auto get air drops", Default = settings["autogetairdrops"], Callback = function(Value)
	settings["autogetairdrops"] = Value
	if settings["autogetairdrops"] == true then
		while task.wait(0.1) and settings["autogetairdrops"] == true do
			for i, v in pairs(game.Workspace:FindFirstChild("AirDrops"):GetChildren()) do
                if v:FindFirstChild("Parachute") == nil then
                    v:FindFirstChild("Crate"):FindFirstChild("ProximityPrompt").HoldDuration = 0
                    local op = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Crate").CFrame
                    wait(0.1)
                    fireproximityprompt(v:FindFirstChild("Crate"):FindFirstChild("ProximityPrompt"), 1)
                    wait(0.1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = op
                end
            end
		end
	end
end});

local autobuyToggle = TycoonSection:AddToggle({Name = "Auto buy", Default = settings["autobuy"], Callback = function(Value)
	settings["autobuy"] = Value
	if settings["autobuy"] == true then
		while task.wait(1) and settings["autobuy"] == true do
			for i, v in pairs(tycoon:FindFirstChild("Buttons"):GetChildren()) do
				if v:FindFirstChild("Button") and v:FindFirstChild("Button"):FindFirstChild("TouchInterest") and v:FindFirstChild("Button").BrickColor == BrickColor.new("Camo") then
					coroutine.resume(coroutine.create(function()
						local button = v:FindFirstChild("Button")
						local bCFrame = button.CFrame
					
						button.Transparency = 1
						button.CanCollide = false
						button.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
						task.wait()
						repeat task.wait() button.CFrame = bCFrame until button.CFrame == bCFrame
						button.Transparency = 0.7
						button.CanCollide = true
					end))
				end
			end
		end
	end
end});

local autosellToggle = TycoonSection:AddToggle({Name = "Auto sell", Default = settings["autosell"], Callback = function(Value)
	settings["autosell"] = Value
	if settings["autosell"] == true then
		while task.wait(0.2) and settings["autosell"] == true do
			if tycoon:FindFirstChild("Orb Processor"):FindFirstChild("Model"):FindFirstChild("Deposit"):FindFirstChild("Button"):FindFirstChild("TouchInterest") then
				local button2 = tycoon:FindFirstChild("Orb Processor"):FindFirstChild("Model"):FindFirstChild("Deposit"):FindFirstChild("Button")
				local bCFrame2 = button2.CFrame

				button2.CanCollide = false
				button2.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
				task.wait(0.1)
				repeat task.wait() button2.CFrame = bCFrame2 until button2.CFrame == bCFrame2
				button2.CanCollide = true

			end
		end
	end
end});

local autorebirthToggle = TycoonSection:AddToggle({Name = "Auto rebirth", Default = settings["autorebirth"], Callback = function(Value)
	settings["autorebirth"] = Value
	if settings["autorebirth"] == true then
		while task.wait(0.2) and settings["autorebirth"] == true do
			if tycoon:FindFirstChild("Rebirth"):FindFirstChild("Button") and tycoon:FindFirstChild("Rebirth"):FindFirstChild("Button"):FindFirstChild("BillboardGui"):FindFirstChild("Price").TextColor3 ~= Color3.fromRGB(255, 96, 114) then
				local button3 = tycoon:FindFirstChild("Rebirth"):FindFirstChild("Button")
				local bCFrame3 = button3.CFrame

				button3.CanCollide = false
				button3.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
				task.wait(0.1)
				repeat task.wait() button3.CFrame = bCFrame3 until button3.CFrame == bCFrame3
				button3.CanCollide = true
			end
		end
	end
end});
