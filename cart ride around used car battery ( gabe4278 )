loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/UIlib/main/Uilib.lua"))()
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local interval = 0
local bombInterval = 0
local gateInterval = 0
local grindCoinsInterval = 0

local spamForward = false
local spamBackward = false
local spamStop = false
local spamLight = false
local spamMove = false
local spamExplode = false
local spamFire = false
local spamWheel = false
local spamJump = false
local spamRocket = false
local spamSpawn = false
local spamBombs = false
local spamGates = false
local grindCoins = false
local includeGamePass = false

if not fireclickdetector then
	StarterGui:SetCore("SendNotification", {
		Title = "Notice",
		Text = "Your exploit does not have 'fireclickdetector'.",
		Duration = 5
	})
end

if not firetouchinterest then
	StarterGui:SetCore("SendNotification", {
		Title = "Notice",
		Text = "Your exploit does not have 'firetouchinterest'.",
		Duration = 5
	})
end

local window = library:AddWindow("cart ride around used car battery hax by Gabry#6899 and spigmaa#7062")

local Carts = window:AddTab("Carts")
local BombCarts = window:AddTab("Bomb Carts")
local Gates = window:AddTab("Gates")
local Misc = window:AddTab("Misc")

function forwardAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("forward") then fireclickdetector(v.forward.ClickDetector) end
			end
		end)
	end
end

function backwardAllCarts()
		for i, v in pairs(workspace:GetChildren()) do
			pcall(function()
				if v.Name:match("Cart") then
					if v:FindFirstChild("backward") then fireclickdetector(v.backward.ClickDetector) end
				end
			end)
		end
end

function stopAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("stop") then fireclickdetector(v.stop.ClickDetector) end
			end
		end)
	end
end

function lightAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("lightbutton") then fireclickdetector(v.lightbutton.ClickDetector) end
			end
		end)
	end
end

function moveAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				local move = v:FindFirstChild("move")
				if move then fireclickdetector(move.ClickDetector) end
			end
		end)
	end
end 

function explodeAllCarts()
    for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("explode") then fireclickdetector(v.explode.ClickDetector) end
			end
		end)
	end
end

function fireAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("firebutton") then fireclickdetector(v.firebutton.ClickDetector) end
			end
		end)
	end
end

function wheelAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("wheelbutton") then fireclickdetector(v.wheelbutton.ClickDetector) end
			end
		end)
	end
end

function jumpAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("jumpbutton") then fireclickdetector(v.jumpbutton.ClickDetector) end
			end
		end)
	end
end

function rocketAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("Cart") then
				if v:FindFirstChild("rocketbutton") then fireclickdetector(v.rocketbutton.ClickDetector) end
			end
		end)
	end
end

function spawnAllCarts()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("respawner") then
				if not includeGamePass and (v.Name == "superiorrespawner" or v.Name == "DREAMrespawner") then return end
				if v:FindFirstChild("respawn") then
					firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 1)
					firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 0)
				end
			end
		end)
	end
end

function spawnBombCarts()
for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("bombrespawnerply") then
				if v:FindFirstChild("respawn") then
					firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 1)
					firetouchinterest(Players.LocalPlayer.Character.PrimaryPart, v.respawn, 0)
				end
			end
		end)
	end
end

function getAllCoins()
	pcall(function(Lol)
		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.tricoins["Tri-PlayCoin"].Handle.CFrame
		wait(1)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.easycoins.PlayCoin.Handle.CFrame
		wait(1)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.mediumcoins.PlayCoin.Handle.CFrame
		wait(1)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").coinspawner.hardcoins.PlayCoin.Handle.CFrame
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
		for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	v.Parent = game.Players.LocalPlayer.Character
	v:Activate()
	end
	end)
	wait(3)
	function b11()
				--fatfatfat
				bv11 = b11
				spawn(function()
					while bv11 == true do wait()
						pcall(function()
							if game:GetService("Workspace")[game.Players.LocalPlayer.Name] then
								wait(.0)
						for i,v in pairs(game:GetService("Workspace")[game.Players.LocalPlayer.Name]:GetDescendants()) do
							if v.Name == "Config" then
						a = require(v)
						a.ReloadTime = 0
							end
						end
					end
					end)
					end
				end)
				end

	if game.Players.LocalPlayer.Character.Humanoid.RigType == "R15" then
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R6" else
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R15"
	end
	game:GetService('StarterGui'):SetCore('ResetButtonCallback',true)
	game.Players.LocalPlayer.Character:BreakJoints()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	repeat 
	if game.Players.LocalPlayer.Character.Humanoid.RigType == "R15" then
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R6" else
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R15"
	end

	until wait(0.0000001)

	if game.Players.LocalPlayer.Character.Humanoid.RigType == "R15" then
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R6" else
	game.Players.LocalPlayer.Character.Humanoid.RigType = "R15"
	end
end

function toggleAllGates()
	for i, v in pairs(workspace:GetChildren()) do
		pcall(function()
			if v.Name:match("crossing") then
				if v:FindFirstChild("Button") then
				    firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 1)
				    firetouchinterest(Players.LocalPlayer.Character.HumanoidRootPart, v.Button, 0)
				end
			end
		end)
	end
end

Carts:AddButton("Forward All Carts", forwardAllCarts)

Carts:AddSwitch("Spam Forward All Carts", function(t)
	spamForward = t
end)

Carts:AddButton("Backward All Carts", backwardAllCarts)

Carts:AddSwitch("Spam Backward All Carts", function(t)
	spamBackward = t
end)

Carts:AddButton("Stop All Carts", stopAllCarts)

Carts:AddSwitch("Spam Stop All Carts", function(t)
	spamStop = t
end)

Carts:AddButton("Light All Carts", lightAllCarts)

Carts:AddSwitch("Spam Light All Carts", function(t)
	spamLight = t
end)

Carts:AddButton("Fire All Carts", fireAllCarts)

Carts:AddSwitch("Spam Fire All Carts", function(t)
	spamFire = t
end)

Carts:AddButton("Wheel All Carts", wheelAllCarts)

Carts:AddSwitch("Spam Wheel All Carts", function(t)
	spamWheel = t
end)

Carts:AddButton("Jump All Carts", jumpAllCarts)

Carts:AddSwitch("Spam Jump All Carts", function(t)
	spamJump = t
end)

Carts:AddButton("Rocket All Carts", rocketAllCarts)

Carts:AddSwitch("Spam Rocket All Carts", function(t)
	spamRocket = t
end)

Carts:AddButton("Spawn All Carts", spawnAllCarts)

Carts:AddSwitch("Spam Spawn All Carts", function(t)
	spamSpawn = t
end)

Carts:AddSwitch("Include Game Pass Carts", function(t)
	includeGamePass = t
end)

Carts:AddSlider("Spam Interval", function(v)
	interval = v
end, {min = 0, max = 10})

spawn(function()
	while wait(interval) do
		if spamForward then forwardAllCarts() end
		if spamBackward then backwardAllCarts() end
		if spamStop then stopAllCarts() end
		if spamLight then lightAllCarts() end
		if spamFire then fireAllCarts() end
		if spamWheel then wheelAllCarts() end
		if spamJump then jumpAllCarts() end
		if spamRocket then rocketAllCarts() end
		if spamSpawn then spawnAllCarts() end
	end
end)

BombCarts:AddButton("Move All Carts", moveAllCarts)

BombCarts:AddSwitch("Spam Move All Carts", function(t)
    spamMove = t
end)

BombCarts:AddButton("Explode All Carts", explodeAllCarts)

BombCarts:AddSwitch("Spam Explode All Carts", function(t)
    spamExplode = t
end)

BombCarts:AddButton("Spawn Bomb Carts", spawnBombCarts)

BombCarts:AddSwitch("Spam Spawn Bomb Carts", function(v)
	spamBombs = v
end)

BombCarts:AddSlider("Spam Interval", function(v)
    bombInterval = v
end, {min = 0, max = 10})

spawn(function()
    while wait(bombInterval) do
        if spamMove then moveAllCarts() end
        if spamExplode then explodeAllCarts() end
	if spamBombs then spawnBombCarts() end
    end
end)

Gates:AddButton("Toggle All Gates", toggleAllGates)

Gates:AddSwitch("Spam Toggle All Gates", function(t)
	spamGates = t
end)

Gates:AddSlider("Spam Interval", function(v)
	gateInterval = v
end)

spawn(function()
	while wait(gateInterval) do
		if spamGates then toggleAllGates() end
	end
end)

Misc:AddButton("Get All Tools", function()
	if Players.LocalPlayer.Character then Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-619.2999877929688, 159.5179443359375, 699.6990966796875)) end
end)

Misc:AddButton("Teleport to Spawn", function()
	if Players.LocalPlayer.Character then Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-13, 3, 15)) end
end)

Misc:AddButton("Teleport to Winners", function()
	if Players.LocalPlayer.Character then Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-610, 161, 674)) end
end)

Misc:AddButton("Get All Coins", getAllCoins)

Misc:AddSwitch("Grind All Coins", function(t)
	grindCoins = t
end)

Misc:AddSlider("Grind Coins Interval", function(v)
	grindCoinsInterval = v
end, {min = 0, max = 10})

spawn(function()
	while wait(grindCoinsInterval) do
		if grindCoins then getAllCoins() end
	end
end)
