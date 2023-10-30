local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
OrionLib:MakeNotification({Name = "Warn!",Content = "Claim a plot to load the script.",Image = "rbxassetid://4483345998",Time = 5})

local plot
repeat for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
		if v.Name == "Owner" and v.Value == game:GetService("Players").LocalPlayer then
			plot = v.Parent
		end
	end
	wait(.5)
until plot ~= nil
OrionLib:MakeNotification({Name = "Hello!",Content = "Script Version: 1.0",Image = "rbxassetid://4483345998",Time = 5})
print(plot)

local localplr = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionLib"})
local Tab = Window:MakeTab({Name = "Farming",Icon = "rbxassetid://4483345998",PremiumOnly = false})

local ao --Auto Obby
local aj --Auto Jar
local ab --Auto Blender
local ac --Auto Crate
local abuy --Auto Buy
local abuyupd -- Auto Buy Upgraders
local adrop -- Auto Drop
local arebirth -- Auto Rebirth
local fc --Fast Arm 

OrionLib:MakeNotification({Name = "Successfully Initialized Plot!",Content = "All farming features are now available",Image = "rbxassetid://4483345998",Time = 5})

Tab:AddToggle({Name = "Auto Obby",Default = false,Callback = function(Value)
	ao = Value
	while ao do
		if wait(1) and ao == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Head then
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 0)
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 1)
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 0)
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 1)
		end
	end
end})

Tab:AddToggle({Name = "Auto Buy",Default = false,Callback = function(Value)
	abuy = Value
	while abuy do
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
			if abuy == true and wait() then
				for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
					if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.Parent.Name ~= "Rainbow Upgrader" and v.Parent.Name ~= "Rainbow Gem Upgrader" and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Toggle Door Gamepass 2" and v.Parent.Name ~= "Toggle Door Gamepass Event" and v.Parent.Name ~= "Gold Blender" and v.Parent.Name ~= "Gold Dropper 1" and v.Parent.Name ~= "Gold Dropper 2" and v.Parent.Name ~= "Gold Dropper 3" then
						firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
						firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
					end
				end
			end
		end
	end
end})

Tab:AddToggle({Name = "Auto Buy Upgraders",Default = false,Callback = function(Value)
	abuyupd = Value
	while abuyupd do
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
			if abuyupd == true and wait() then
				for i, v in pairs(plot.UpgradeButtons:GetDescendants()) do
					if v.Name == "Button" and v:FindFirstChild("TouchInterest") then
						firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
						firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
					end
				end
			end
		end
	end
end})

Tab:AddToggle({Name = "Auto Jar",Default = false,Callback = function(Value)
	aj = Value
	while aj do
		if aj == true then
			for i, v in pairs(plot.ProcessingMachines.JarFactory:GetDescendants()) do
				if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory"  then
					if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
						if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							--print(v.Parent.Parent.Parent.Parent)
							fireproximityprompt(v)
							repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
						end
					end
				end
				if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "HalloweenJarFactory" then
					if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
						if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							--print(v.Parent.Parent.Parent.Parent)
							repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 5 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory2" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								--print(v.Parent.Parent.Parent.Parent)
								repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
							end
						end
					end
				end
			end
		end
	wait()
	end
end})


-- a bit broken
Tab:AddToggle({Name = "Auto Crate",Default = false,Callback = function(Value)
	ac = Value
	while ac do
		if ac == true and plot.ProcessingMachines.CratePackager.CratePackager:FindFirstChild("Crates") then
		for i, v in pairs(plot:GetDescendants()) do
			if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "CratePackager" and (#v.Parent.Parent.Parent.Parent.Crates.Crate.Jars:GetChildren()) >= 8 then
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = plot.ProcessingMachines.CratePackager.CratePackager.Button.Button.CFrame + Vector3.new(-1,2,2)
					repeat fireproximityprompt(v)
					wait() 
					until not v.Parent.Parent.Parent.Parent.Crates:FindFirstChild("Crate")
				end
			end
		end
		end
	wait()
	end
end})

Tab:AddToggle({Name = "Auto Blend",Default = false,Callback = function(Value)
	ab = Value
	while ab do
		if ab == true then
		for i, v in pairs(plot:GetDescendants()) do
			if v.Name == "ActivateBlender" and wait(.05) and v.Parent.Parent.Parent.ActivationLight.Color ~= Color3.fromRGB(0, 255, 0) and v.Parent.Parent:FindFirstChild("Arrow") then
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
					repeat
						wait()
						fireproximityprompt(v)
					until
						v.Parent.Parent.Parent.ActivationLight.Color == Color3.fromRGB(0, 255, 0)
				end
			end
		end
	end
	end
end})

Tab:AddToggle({Name = "Auto Drops",Default = false,Callback = function(Value)
	adrop = Value
	while adrop do
		wait()
		if adrop == true then
			local dropfolder = game.Workspace.RandomCrateDropsFolder
			for i, v in pairs(dropfolder:GetDescendants()) do
				if v.ClassName == "TouchTransmitter" then 
					local characterpart = game.Players.LocalPlayer.Character.PrimaryPart
					firetouchinterest(v.Parent, characterpart, 0)
					firetouchinterest(v.Parent, characterpart, 1)
				end
			end
		end
	end
end})

Tab:AddToggle({Name = "Auto Rebirth",Default = false,Callback = function(Value)
	arebirth = Value
	while arebirth do
		wait()
		if arebirth == true then
			local success, err = pcall(function()
firetouchinterest(plot.RebirthButtons.RebirthButton.Button, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
		firetouchinterest(plot.RebirthButtons.RebirthButton.Button, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
		if game.Players.LocalPlayer.PlayerGui.MainGui.RebirthUi.Visible == true then
			firesignal(game.Players.LocalPlayer.PlayerGui.MainGui.RebirthUi.Rebirth.MouseButton1Click)
		end
			end)
			if not success then
				warn("Error:", err)
                end
	end
	end
end})

Tab:AddToggle({Name = "Fast Arm",Default = false,Callback = function(Value)
	fc = Value
	while fc do
		if fc == true then
		game:GetService("ReplicatedStorage").Remotes.Event.Animations.moveArm:FireServer()
	end
	wait()
	end
end})

Tab:AddButton({Name = "Redeem All Code ( +3 Codes )",Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("PartyTime!")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("1yearfactory!")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DaveThePodiumMan!")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ABX")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("SpringLoaded")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("IceRockSkip")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ImAWall")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("NotThatHard")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("RedSoilEntry")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DevPapers")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("johan")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("HauntedSmoothie")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("7Rose10KRebirths")
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("25MVisits")
end})

local ws = Instance.new("ScreenGui")
ws.Parent = game:GetService("CoreGui")

local wsf = Instance.new("Frame")
wsf.Parent = ws
wsf.BackgroundColor3 = Color3.new(355,355,355)
wsf.Size = UDim2.new(100,100,100)
ws.Enabled = false

Tab:AddToggle({Name = "White Screen / Anti Lag",Default = false,Callback = function(Value)
	ws.Enabled = Value
end})

-- idk if this works but ok
localplr.Idled:Connect(function()
	local VirtualUser = game:GetService("VirtualUser")
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
