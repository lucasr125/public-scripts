getgenv().settings = {
	AutoClick = false,
	AutoRebirth = false,
	AutoClaimGift = false,
	AutoEventPets = false
}
local LocalPlr = game.Players.LocalPlayer
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/lucasr125/bracket-lib-v3.3/main/bracketv3.3.lua"))()

local Window = Bracket:Window({Name = GameName,Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,296,0,296),Position = UDim2.new(0.5,-248,0.5,-248)}) do
local MainTab = Window:Tab({Name = "Main"}) do
local GameFunc = MainTab:Section({Name = "Game Functions",Side = "Left"}) do
	local AutoClick = GameFunc:Toggle({Name = "Auto Click",Flag = "AutoClick",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
	getgenv().settings.AutoClick = Toggle_Bool
	end})

	local AutoRebirth = GameFunc:Toggle({Name = "Auto Rebirth",Flag = "AutoRebirth",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
	getgenv().settings.AutoRebirth = Toggle_Bool
	end})

	local AutoClaimGift = GameFunc:Toggle({Name = "Auto Claim Gift",Flag = "AutoClaimGift",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
	getgenv().settings.AutoClaimGift = Toggle_Bool
	end})

	local AutoEventPets = GameFunc:Toggle({Name = "Auto Get Event Pets",Flag = "AutoEventPets",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
	getgenv().settings.AutoEventPets = Toggle_Bool
	end})

	local GetBestClick = GameFunc:Button({Name = "Get Best Click",Side = "Left",Callback = function() 
	for _, v in pairs(game.ReplicatedStorage.Items.Pencil:GetDescendants()) do
	if v.Name == "PowerReq" then
		if LocalPlr.Rock.Value >= v.Value then 
			local PencilSelected = game:GetService("ReplicatedStorage").Items.Pencil[v.Parent.Parent.Name]
			game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClickChangeEvent:FireServer(PencilSelected)
		end 
	end
end
	end})

	local RedeemAllCodes = GameFunc:Button({Name = "Redeem All Codes",Side = "Left",Callback = function() 
	for _, v in pairs(game.ReplicatedStorage.Codes:GetDescendants()) do
	if v.Name == "Code" then
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.CodeEventSR:FireServer(v.Value)
	end
end
	end})	
end
end
end

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoClick == true then
local ohString1 = "Click"
local ohBoolean2 = false

game:GetService("ReplicatedStorage").ClickEvent:FireServer(ohString1, ohBoolean2)
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoRebirth == true then
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.RebirthEvent:FireServer()
game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.SuperRebirthEvent:FireServer()
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoClaimGift == true then
		local rewardclaim = "Reward1" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
		
		local rewardclaim = "Reward2" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward3" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward4" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward5" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward6" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward7" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward8" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward9" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward10" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward11" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)

		local rewardclaim = "Reward12" -- 1 a 12
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.ClaimGift:FireServer(rewardclaim)
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if getgenv().settings.AutoEventPets == true then
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.SpaceEggEvent:FireServer()
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.FreePackEvent:FireServer()
		game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventEggEvent:FireServer()
	end
end)
