local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local autoCollectMoney = false
local autoBuyItems = false

local plr = game.Players.LocalPlayer
local tycoonOwned = plr:FindFirstChild("TycoonOwned").Value


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();
local Window = OrionLib:MakeWindow({Name = gameName.." ; "..identifyexecutor(), HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"});
local Tab = Window:MakeTab({Name = "Main Tab",Icon = "rbxassetid://4483345998", PremiumOnly = false});
Tab:AddToggle({Name = "Auto collect money",Default = false,Callback = function(Value)
	autoCollectMoney = Value
end});
Tab:AddToggle({Name = "Auto buy items",Default = false,Callback = function(Value)
	autoBuyItems = Value
end});

while wait(0.1) do
	if autoCollectMoney == true then
		local collector = tycoonOwned.Build.Collect.Part
		firetouchinterest(plr.Character.HumanoidRootPart, collector, 1)
		firetouchinterest(plr.Character.HumanoidRootPart, collector, 0)
		wait()
	end
	if autoBuyItems == true then
		for i, v in pairs(tycoonOwned.Buttons:GetDescendants()) do
			if v.Name == "Part" and v.Parent.Name == "Button" and v:FindFirstChild("TouchInterest") and v.BrickColor == BrickColor.new("Shamrock") then
				firetouchinterest(plr.Character.HumanoidRootPart, v, 1)
				firetouchinterest(plr.Character.HumanoidRootPart, v, 0)
				wait()
			end
		end
	end
end
