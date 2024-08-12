if not game:IsLoaded() then
    game.Loaded:Wait()
end

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
	["brakeupgrade"] = 0,
	["speedupgrade"] = 0,
	["trackmagnets"] = false,
    ["destroyenemies"] = false,
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

local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local CartSection = mainTab:AddSection({
	Name = "Cart Section"
})
local brakeupgradeSlider = CartSection:AddSlider({Name = "Set brake upgrade",Min = 0,Max = 2,Default = settings.brakeupgrade,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "upgrade",Callback = function(Value)
	settings.brakeupgrade = Value
	localPlayer.PDF.BrakeUpgrade.Value = settings.brakeupgrade
	localPlayer.PDF.BrakeUpgradeScale.Value = 1
end});
local speedupgradeSlider = CartSection:AddSlider({Name = "Set speed upgrade",Min = 0,Max = 3,Default = settings.speedupgrade,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "upgrade",Callback = function(Value)
	settings.speedupgrade = Value
	localPlayer.PDF.SpeedUpgrade.Value = settings.speedupgrade
	localPlayer.PDF.SpeedUpgradeScale.Value = 1
end});
local trackmagnetsToggle = CartSection:AddToggle({Name = "Enable/disable track magnets",Default = settings.trackmagnets,Callback = function(Value)
	settings.trackmagnets = Value
	localPlayer.PDF.TrackMagnets.Value = settings.trackmagnets
    localPlayer.PDF.TrackMagnetsOn.Value = settings.trackmagnets
end});

local itemsToDestroy = {
    "Axe", "Cannon", "FlameThrower", "Hammer", "Mine", "NpcBomb", 
    "PartDropper", "Rocket", "SnowballCannon", "FallingIcicle", 
    "Boulder", "DamagePart"
}
local delEnemy = {}

function destroyExistentEnemy()
    for i, v in ipairs(game.Workspace:GetDescendants()) do
        if table.find(itemsToDestroy, v.Name) and not table.find(delEnemy, v) and settings.destroyenemies == true then
            table.insert(delEnemy, v)
            print("Destroyed part: "..v.Name)
			task.wait(0.01)
            v:Destroy()
        end
    end
end

local getCheckpointsButton = CartSection:AddButton({
    Name = "Get checkpoints",
    Callback = function()
		for i, v in ipairs(game.Workspace.CartRideWorkspace.Objects:GetChildren()) do
			if v:FindFirstChild("LevelSpawn") then
				firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), v.LevelSpawn, 0)
				task.wait(0.1)
				firetouchinterest(localPlayer.Character:WaitForChild("HumanoidRootPart"), v.LevelSpawn, 1)
			end
		end
    end
})

if game.Workspace.CartRideWorkspace.Objects:FindFirstChild("CartGiver") ~= nil then
	local getCartButton = CartSection:AddButton({
		Name = "Get cart",
		Callback = function()

			local CartGiver = game.Workspace.CartRideWorkspace.Objects.CartGiver
			game:GetService("TweenService"):Create(localPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(CartGiver.WorldPivot.Position)}):Play();
			while task.wait() do
				for i, v in pairs(CartGiver:GetDescendants()) do
					if v.ClassName ~= "Model" then
						eModel = true
						break
					end
				end
				if eModel == true then
					if localPlayer.PlayerGui.ScreenGui.MenuButton.ShopButton.Notification.Visible == true then
						break
					end
					if CartGiver:FindFirstChild("Hitbox") ~= nil then
						firetouchinterest(CartGiver.Hitbox, localPlayer.Character.HumanoidRootPart, 0)
						task.wait(0.1)
						firetouchinterest(CartGiver.Hitbox, localPlayer.Character.HumanoidRootPart, 1)
					end
				end
			end

		end
	})
end
local delJunksButton = CartSection:AddButton({
	Name = "Delete junks",
	Callback = function()
		game.Workspace:FindFirstChild("Junk"):Destroy()
	end
})

local destroyEnemiesToggle = CartSection:AddToggle({
	Name = "Enable/disable destroy enemies ( bad )",
	Default = settings.destroyenemies,
	Callback = function(Value)
		settings.destroyenemies = Value
           if settings.destroyenemies == true then
               while settings.destroyenemies == true do
				task.wait(1)
		        destroyExistentEnemy()
               end
           end
	end
})
