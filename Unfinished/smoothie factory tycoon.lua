local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local localplr = game.Players.LocalPlayer
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
OrionLib:MakeNotification({Name = "Warn!",Content = "Claim a plot to load the script.",Image = "rbxassetid://4483345998",Time = 5})

local plot
repeat for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
		if v.Name == "Owner" and v.Value == localplr then
			plot = v.Parent
		end
	end
	wait(.5)
until plot ~= nil
OrionLib:MakeNotification({Name = "Hello!",Content = "Script Version: 1.7",Image = "rbxassetid://4483345998",Time = 5})
print(plot)

local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionLib"})
local Tab = Window:MakeTab({Name = "Farming",Icon = "rbxassetid://4483345998",PremiumOnly = false})
local Tab2 = Window:MakeTab({Name = "Farming 2",Icon = "rbxassetid://4483345998",PremiumOnly = false})

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
		if wait(1) and ao == true and localplr.Character and localplr.Character.Head then
			firetouchinterest(localplr.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 0)
			firetouchinterest(localplr.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 1)
			firetouchinterest(localplr.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 0)
			firetouchinterest(localplr.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 1)
		end
	end
end})

Tab:AddToggle({Name = "Auto Buy",Default = false,Callback = function(Value)
	abuy = Value
	while abuy do
		if localplr.Character and localplr.Character.HumanoidRootPart then
			if abuy == true and wait(0.005) then
				for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
					if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.PurchaseBillboard.Price.Text ~= "Gamepass" and v.Parent.Name ~= "Rainbow Upgrader" and v.Parent.Name ~= "Rainbow Gem Upgrader" and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Toggle Door Gamepass 2" and v.Parent.Name ~= "Toggle Door Gamepass Event" and v.Parent.Name ~= "Gold Blender" and v.Parent.Name ~= "Gold Dropper 1" and v.Parent.Name ~= "Gold Dropper 2" and v.Parent.Name ~= "Gold Dropper 3" then
						firetouchinterest(v, localplr.Character.HumanoidRootPart, 0)
						firetouchinterest(v, localplr.Character.HumanoidRootPart, 1)
					end
				end
			end
		end
	end
end})

Tab:AddToggle({Name = "Auto Buy Upgraders",Default = false,Callback = function(Value)
	abuyupd = Value
	while abuyupd do
		if localplr.Character and localplr.Character.HumanoidRootPart then
			if abuyupd == true and wait() then
				for i, v in pairs(plot.UpgradeButtons:GetDescendants()) do
					if v.Name == "Button" and v:FindFirstChild("TouchInterest") then
						firetouchinterest(v, localplr.Character.HumanoidRootPart, 0)
						firetouchinterest(v, localplr.Character.HumanoidRootPart, 1)
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
						if localplr.Character and localplr.Character.HumanoidRootPart then
							localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							--print(v.Parent.Parent.Parent.Parent)
							--fireproximityprompt(v)
							repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
						end
					end
				end
				if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "HalloweenJarFactory" then
					if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
						if localplr.Character and localplr.Character.HumanoidRootPart then
							localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							--print(v.Parent.Parent.Parent.Parent)
							repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 5 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory2" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								--print(v.Parent.Parent.Parent.Parent)
								repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
							end
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 21 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "MoonJarFactory1" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								--print(v.Parent.Parent.Parent.Parent)
								repeat wait() fireproximityprompt(v) until tostring(v.Parent.Cooldown.TextLabel.Text) ~= "0"
							end
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 26 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "MoonJarFactory2" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
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
		if ac == true then
		for i, v in pairs(plot.ProcessingMachines.CratePackager:GetDescendants()) do
			if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "CratePackager" and (#v.Parent.Parent.Parent.Parent.Crates.Crate.Jars:GetChildren()) >= 8 then
				if localplr.Character and localplr.Character.HumanoidRootPart then
					localplr.Character.HumanoidRootPart.CFrame = plot.ProcessingMachines.CratePackager.CratePackager.Button.Button.CFrame + Vector3.new(-1,2,2)
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
		for i, v in pairs(plot.Purchases:GetDescendants()) do
			if v.Name == "ActivateBlender" and wait(.05) and v.Parent.Parent.Parent.ActivationLight.Color ~= Color3.fromRGB(0, 255, 0) and v.Parent.Parent:FindFirstChild("Arrow") then
				if localplr.Character and localplr.Character.HumanoidRootPart then
					localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
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
					local characterpart = localplr.Character.PrimaryPart
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
firetouchinterest(plot.RebirthButtons.RebirthButton.Button, localplr.Character.HumanoidRootPart, 1)
		firetouchinterest(plot.RebirthButtons.RebirthButton.Button, localplr.Character.HumanoidRootPart, 0)
		if localplr.PlayerGui.MainGui.RebirthUi.Visible == true then
			firesignal(localplr.PlayerGui.MainGui.RebirthUi.Rebirth.MouseButton1Click)
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
    localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("PartyTime!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("1yearfactory!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DaveThePodiumMan!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ABX")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("SpringLoaded")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("IceRockSkip")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ImAWall")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("NotThatHard")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("RedSoilEntry")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DevPapers")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("johan")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("HauntedSmoothie")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("7Rose10KRebirths")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("25MVisits")
end})

Tab:AddButton({Name = "Remove Others Tycoon",Callback = function()
    for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
		if v.Name ~= "Owner" and v.Value ~= localplr then
			v.Parent:Destroy()
		end
	end
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

local autoJarActive = false
local autoBlendActive = false
local autoJarThread
local autoBlendThread

Tab2:AddToggle({
    Name = "Auto Jar ( fast ver. )",
    Default = false,
    Callback = function(Value)
        autoJarThread = Value
	while autoJarThread do
		if autoJarThread == true and not autoBlendActive == true then
			for i, v in pairs(plot.ProcessingMachines.JarFactory:GetDescendants()) do
				if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory"  then
					if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
						if localplr.Character and localplr.Character.HumanoidRootPart then
							localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							fireproximityprompt(v)
						end
					end
				end
				if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "HalloweenJarFactory" then
					if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
						if localplr.Character and localplr.Character.HumanoidRootPart then
							localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
							--print(v.Parent.Parent.Parent.Parent)
							fireproximityprompt(v)
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 5 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory2" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								fireproximityprompt(v)
							end
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 21 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "MoonJarFactory1" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								fireproximityprompt(v)
							end
						end
					end
				end
				if localplr.leaderstats.Rebirths.Value >= 26 then
					if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "MoonJarFactory2" then
						if tostring(v.Parent.Cooldown.TextLabel.Text) == "0" or tostring(v.Parent.Cooldown.TextLabel.Text) == "?" then
							if localplr.Character and localplr.Character.HumanoidRootPart then
								localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
								fireproximityprompt(v)
							end
						end
					end
				end
			end
		end
	wait()
	end
end})

Tab2:AddToggle({
    Name = "Auto Blend ( fast ver. )",
    Default = false,
    Callback = function(Value)
        autoBlendThread = Value
	while autoBlendThread do
		if autoBlendThread == true then
			for i, v in pairs(plot:GetDescendants()) do
				if v.Name == "ActivateBlender" and wait(.05) and v.Parent.Parent.Parent.ActivationLight.Color ~= Color3.fromRGB(0, 255, 0) then
					if localplr.Character and localplr.Character.HumanoidRootPart then
						localplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
						wait()
						fireproximityprompt(v)
					end
				end
			end
		end
	end
end})

-- idk if this works but ok
localplr.Idled:Connect(function()
	local VirtualUser = game:GetService("VirtualUser")
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
