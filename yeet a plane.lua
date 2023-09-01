local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV33.lua"))()

local Window = Bracket:Window({Name = "Window",Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,296,0,296),Position = UDim2.new(0.5,-248,0.5,-248)}) do
	local MainTab = Window:Tab({Name = "Main"}) do
		local MainScript = MainTab:Section({Name = "Main Script",Side = "Left"}) do
			local AutoThrow = MainScript:Toggle({Name = "Auto Throw 100%",Flag = "AutoThrow",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoThrow = Toggle_Bool

				while AutoThrow do
					local PlrPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
					game:GetService("ReplicatedStorage").Remotes.ThrowPlane:FireServer(PlrPos, 1)
					wait()
				end

			end})

			AutoThrow:Keybind({Flag = "AutoThrowK",Value = "NONE",DoNotClear = false,Mouse = false,Callback = function(Key_String,Pressed_Bool,Toggle_Bool) 
				AutoThrow = Toggle_Bool
			end,
			Blacklist = {"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}})
			
			local AutoGift = MainScript:Toggle({Name = "Auto Get Gift",Flag = "AutoGift",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoGift = Toggle_Bool

				while AutoGift do
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
					wait()
				end
-- idk but this is broken
			end})

			AutoGift:Keybind({Flag = "AutoGetGift",Value = "NONE",DoNotClear = false,Mouse = false,Callback = function(Key_String,Pressed_Bool,Toggle_Bool) 
				AutoGift = Toggle_Bool
			end,
			Blacklist = {"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}})
			
			local AutoStrength = MainScript:Toggle({Name = "Auto Upgrade Strength",Flag = "AutoStrength",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoStrength = Toggle_Bool
				while AutoStrength do
					local ohString1 = "Strength"
					game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)
					wait()
				end
			end})
			
			local AutoAccuracy = MainScript:Toggle({Name = "Auto Upgrade Accuracy",Flag = "AutoAccuracy",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoAccuracy = Toggle_Bool
				while AutoAccuracy do
					local ohString1 = "Accuracy"
					game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)
					wait()
				end
			end})
			
			local AutoWalkspeed = MainScript:Toggle({Name = "Auto Upgrade Walkspeed",Flag = "AutoWalkspeed",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoWalkspeed = Toggle_Bool
				while AutoWalkspeed do
					local ohString1 = "Walkspeed"
					game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(ohString1)
					wait()
				end
			end})
			
			local AutoSpin = MainScript:Toggle({Name = "Auto Spin",Flag = "AutoSpin",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
				AutoSpin = Toggle_Bool
				while AutoSpin do
					game:GetService("ReplicatedStorage").Remotes.Spin:InvokeServer()
					wait()
				end
			end})
		end
	end
end

--[[ Auto buy egg

local ohString1 = "Desert Egg"
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remotes.HatchEgg:InvokeServer(ohString1, ohNumber2)
]]
