getgenv().settings = {
	AutoGetOrbs = false,
	AutoBuy = false,
	AutoSell = false,
	AutoObby = false,
	AutoClaimGift = false,
	AutoRebirth = false
}
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local LocalPlr = game.Players.LocalPlayer
local PlrTycoon
for _, v in pairs(game.Workspace.Tycoons:GetDescendants()) do
	if v.Name == "Owner" then 
		if v.Value == LocalPlr.Name then 
			PlrTycoon = v.Parent
		end
	end
end
local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/lucasr125/bracket-lib-v3.3/main/bracketv3.3.lua"))()
Bracket:Notification({Title = "Loaded.",Description = "Your tycoon is: "..PlrTycoon.Name,Duration = 5}) -- Duration can be nil for "x" to pop up

local Window = Bracket:Window({Name = GameName,Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,296,0,296),Position = UDim2.new(0.5,-248,0.5,-248)}) do
local MainTab = Window:Tab({Name = "Main"}) do
	local MainSection = MainTab:Section({Name = "Tycoon Functions",Side = "Left"}) do
		local AutoGetOrbs = MainSection:Toggle({Name = "Auto Get Orbs",Flag = "AutoGetOrbs",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoGetOrbs = Toggle_Bool
		end})

		local AutoBuy = MainSection:Toggle({Name = "Auto Buy",Flag = "AutoBuy",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoBuy = Toggle_Bool
		end})

		local AutoSell = MainSection:Toggle({Name = "Auto Sell",Flag = "AutoSell",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoSell = Toggle_Bool
		end})

		local AutoObby = MainSection:Toggle({Name = "Auto Obby",Flag = "AutoObby",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoObby = Toggle_Bool
		end})

		local AutoClaimGift = MainSection:Toggle({Name = "Auto Claim Gift",Flag = "AutoClaimGift",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoClaimGift = Toggle_Bool
		end})

		local AutoRebirth = MainSection:Toggle({Name = "Auto Rebirth",Flag = "AutoRebirth",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
		getgenv().settings.AutoRebirth = Toggle_Bool
		end})
	end
end
end

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoGetOrbs == true then
		for _, v in pairs(PlrTycoon.Drops:GetDescendants()) do
	if v.ClassName == "Part" then 
		v.CFrame = LocalPlr.Character.Pickup.CFrame
	end
end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoBuy == true then
		for _, v in pairs(PlrTycoon.Buttons:GetDescendants()) do
	if v.ClassName == "TouchTransmitter" then
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 0)
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 1)
	end
end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoSell == true then
		for _, v in pairs(PlrTycoon["Orb Processor"]:GetDescendants()) do
	if v.ClassName == "TouchTransmitter" then
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 0)
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 1)
	end
end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoObby == true then
		for _, v in pairs(game.Workspace.Obby:GetDescendants()) do
	if v.Name == "ObbyButton" then
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 0)
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 1)
	end
end
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoClaimGift == true then
		game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(1)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(2)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(3)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(4)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(5)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(6)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(7)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(8)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(9)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(10)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(11)
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(12)
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoRebirth == true then
		for _, v in pairs(PlrTycoon.Rebirth:GetDescendants()) do
	if v.ClassName == "TouchTransmitter" then
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 0)
		firetouchinterest(v.Parent, LocalPlr.Character.HumanoidRootPart, 1)
	end
end
	end
end)
