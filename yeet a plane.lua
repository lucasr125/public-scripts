-- Auto Throw 100%
local a = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position

local ohVector31 = a 
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remotes.ThrowPlane:FireServer(ohVector31, ohNumber2)

-- Auto buy egg

local ohString1 = "Desert Egg"
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remotes.HatchEgg:InvokeServer(ohString1, ohNumber2)

-- Auto Upgrade

local ohString1 = "Strength"

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)

local ohString1 = "Accuracy"

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)

local ohString1 = "Walkspeed"

game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)

-- Auto get gifts
local ohString1 = "1"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "2"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "3"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "4"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "5"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "6"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "7"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "8"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

local ohString1 = "9"

game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer(ohString1)

-- Auto spin

game:GetService("ReplicatedStorage").Remotes.Spin:InvokeServer()
