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

local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local Tab = Window:MakeTab({Name = "Farming",Icon = "rbxassetid://4483345998",PremiumOnly = false})

local ao --Auto Obby
local aj --Auto Jar
local ab --Auto Blender
local ac --Auto Crate
local abuy --Auto Buy
local abuyupd -- Auto Buy Upgraders
local adrop -- Auto Drop
local fc --Fast Arm 

OrionLib:MakeNotification({Name = "Successfully Initialized Plot!",Content = "All farming features are now available",Image = "rbxassetid://4483345998",Time = 5})

Tab:AddToggle({Name = "Auto Obby",Default = false,Callback = function(Value)
	ao = Value
end})

Tab:AddToggle({Name = "Auto Buy",Default = false,Callback = function(Value)
	abuy = Value
end})

Tab:AddToggle({Name = "Auto Buy Upgraders",Default = false,Callback = function(Value)
	abuyupd = Value
end})

Tab:AddToggle({Name = "Auto Jar",Default = false,Callback = function(Value)
	aj = Value
end})

Tab:AddToggle({Name = "Auto Crate",Default = false,Callback = function(Value)
	ac = Value
end})

Tab:AddToggle({Name = "Auto Blend",Default = false,Callback = function(Value)
	ab = Value
end})

Tab:AddToggle({Name = "Auto Drops",Default = false,Callback = function(Value)
	adrop = Value
end})

Tab:AddToggle({Name = "Fast Arm",Default = false,Callback = function(Value)
	fc = Value
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

game:GetService("RunService").Heartbeat:Connect(function()
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
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if adrop == true then
		game:GetService("ReplicatedStorage").Remotes.Event.Animations.moveArm:FireServer()
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if aj == true and task.wait(1) then
		for i, v in pairs(plot:GetDescendants()) do
			if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "JarFactory" then
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
					print(v.Parent.Parent.Parent.Parent)
					fireproximityprompt(v)
				end
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if  ac == true and plot.ProcessingMachines.CratePackager.CratePackager:FindFirstChild("Crates") then
		for i, v in pairs(plot:GetDescendants()) do
			if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent.Name == "CratePackager" then
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = plot.ProcessingMachines.CratePackager.CratePackager.Button.Button.CFrame + Vector3.new(-1,2,2)
					fireproximityprompt(v)
				end
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if ab == true then
		for i, v in pairs(plot:GetDescendants()) do
			if v.Name == "ActivateBlender" and task.wait(.05) then
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
					task.wait(.05)
					fireproximityprompt(v)
				end
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
		if abuy == true and task.wait(0) then
			for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
				if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.Parent.Name ~= "Rainbow Upgrader" and v.Parent.Name ~= "Rainbow Gem Upgrader" and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Toggle Door Gamepass 2" and v.Parent.Name ~= "Gold Blender" and v.Parent.Name ~= "Gold Dropper 1" and v.Parent.Name ~= "Gold Dropper 2" and v.Parent.Name ~= "Gold Dropper 3" then
					firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
					firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
				end
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
		if abuyupd == true and task.wait(0) then
			for i, v in pairs(plot.UpgradeButtons:GetDescendants()) do
				if v.Name == "Button" and v:FindFirstChild("TouchInterest") then
					firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
					firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
				end
			end
		end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if task.wait(5) and ao == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Head then
		firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 0)
		firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 1)
		firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 0)
		firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.EasyObby.Finish.Button, 1)
	end
end)
