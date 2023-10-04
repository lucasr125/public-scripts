local localplr = game.Players.LocalPlayer
local plrid = game:GetService("Players"):GetUserIdFromNameAsync(localplr.Name)
local map

repeat
	for _, v in pairs(game.Workspace.Map.Blocks:GetDescendants()) do
		if v.ClassName == "SpawnLocation" then
			if v:GetAttribute("PlayerId") == plrid then
				map = v.Parent
			end
		end
	end
	task.wait()
until map ~= nil

getgenv().settings = {
	AutoPaint = false,
	PaintCooldown = 0,
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false})

Tab:AddLabel("This lags so much...")
Tab:AddButton({Name = "Paint Blocks",Callback = function()
	for _, v in pairs(map:GetDescendants()) do
		if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Part" then 
			firetouchinterest(v.Parent, localplr.Character.HumanoidRootPart, 1)
			firetouchinterest(v.Parent, localplr.Character.HumanoidRootPart, 0)
		end
	end
end})

Tab:AddToggle({Name = "Auto Paint Blocks",Default = false,Callback = function(Value)
	getgenv().settings.AutoPaint = Value
	while getgenv().settings.AutoPaint do
		for _, v in pairs(map:GetDescendants()) do
			if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Part" then 
				firetouchinterest(v.Parent, localplr.Character.HumanoidRootPart, 1)
				firetouchinterest(v.Parent, localplr.Character.HumanoidRootPart, 0)
				task.wait(getgenv().settings.PaintCooldown)
			end
		end
	end
end})

Tab:AddSlider({Name = "Paint Cooldown",Min = 0,Max = 5,Default = 0,Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "painting cooldown",Callback = function(Value)
	getgenv().settings.PaintCooldown = Value
end})
