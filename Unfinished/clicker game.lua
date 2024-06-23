getgenv().settings = {
	AutoClicker = false,
	FreeSpin = false,
	CraftPets = false,
	EquipBestPet = false,
	AutoRebirth = false,
	RebirthOption = 0,
	AutoHatchPet = false,
	Egg = "Common Egg",
	OpenEgg = "Three",
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false})

Tab:AddToggle({Name = "Auto Clicker",Default = false,Callback = function(Value)
	getgenv().settings.AutoClicker = Value
	while getgenv().settings.AutoClicker do
		game:GetService("ReplicatedStorage").Events.Tap:FireServer("Click")
		task.wait()
	end
end})

Tab:AddToggle({Name = "Add FREE Spin",Default = false,Callback = function(Value)
	getgenv().settings.FreeSpin = Value
	while getgenv().settings.FreeSpin do
		game:GetService("ReplicatedStorage").Events.SpinsAdd:FireServer(game:GetService("Players").LocalPlayer)
		task.wait()
	end
end})

Tab:AddToggle({Name = "Craft Pets",Default = false,Callback = function(Value)
	getgenv().settings.CraftPets = Value
	while getgenv().settings.CraftPets do
		game:GetService("ReplicatedStorage").Functions.Pets:InvokeServer("CraftAll")
		task.wait()
	end
end})

Tab:AddToggle({Name = "Equip Best Pet",Default = false,Callback = function(Value)
	getgenv().settings.EquipBestPet = Value
	while getgenv().settings.EquipBestPet do
		game:GetService("ReplicatedStorage").Events.Pets:FireServer("EquipBest", "Taps")
		task.wait()
	end
end})

Tab:AddToggle({Name = "Auto Rebirth",Default = false,Callback = function(Value)
	getgenv().settings.AutoRebirth = Value
	while getgenv().settings.AutoRebirth do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().settings.RebirthOption)
		task.wait()
	end
end})

Tab:AddDropdown({
	Name = "Rebirth Option",
	Default = 0,
	Options = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40},
	Callback = function(Value)
		getgenv().settings.RebirthOption = Value
	end    
})

--[[Tab:AddToggle({Name = "Auto Hatch Pets",Default = false,Callback = function(Value)
	getgenv().settings.AutoHatchPet = Value
	while getgenv().settings.AutoHatchPet do
		game:GetService("ReplicatedStorage").Events.HatchEgg:FireServer(getgenv().settings.Egg, getgenv().settings.OpenEgg)
		task.wait()
	end
end})

Tab:AddDropdown({
	Name = "Open Egg Option",
	Default = "Three",
	Options = {"One", "Three"},
	Callback = function(Value)
		getgenv().settings.OpenEgg = Value
	end    
})

Tab:AddDropdown({
	Name = "Egg Option",
	Default = "Common Egg",
	Options = {"Common Egg", "Spike Egg", "Rythm Egg", "Bone Egg", "Jungle Egg", "Candy Egg"},
	Callback = function(Value)
		getgenv().settings.Egg = Value
	end    
})]]
