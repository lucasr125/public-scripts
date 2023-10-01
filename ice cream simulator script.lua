local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mohamedyoo/owlhub/main/New%20ui"))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = Library.CreateLib(GameName, "Sentinel")

local Main = Window:NewTab("Main")
local credit = Window:NewTab("credit")

local Section = Main:NewSection("Main")
local creditSection = credit:NewSection("Main")

local RebirthSection1 = Main:NewSection("Rebrith board 1")
local RebirthSection2 = Main:NewSection("Rebrith board 2")
local RebirthSection3 = Main:NewSection("Rebrith board 3")
local RebirthSection4 = Main:NewSection("Rebrith board 4")
local RebirthSection5 = Main:NewSection("Rebrith board 5")
local RebirthSection6 = Main:NewSection("Rebrith board 6")
local RebirthSection7 = Main:NewSection("Rebrith board 7")
local RebirthSection8 = Main:NewSection("Rebrith board 8")


Section:NewToggle("auto CLicker", "Make your player auto click", function(v)
	getgenv().CLicker = v
	while getgenv().CLicker == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("Roll2")
		game:GetService("RunService").Heartbeat:wait();
	end
end)

Section:NewToggle("auto Sell", "Make your player auto click", function(v)
	getgenv().Sell = v
	while getgenv().Sell == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("Sell2",workspace.Sells.Lobby)
		game:GetService("RunService").Heartbeat:wait();
	end
end)


RebirthSection1:NewToggle("one rebirth", "Make your player auto click", function(v)
	getgenv().One = v
	while getgenv().One == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",1,1)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection1:NewToggle("5 rebirth", "Make your player auto click", function(v)
	getgenv().Two = v
	while getgenv().Two == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",1,2)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection1:NewToggle("10 rebirth", "Make your player auto click", function(v)
	getgenv().Three = v
	while getgenv().Three == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",1,3)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection1:NewToggle("25 rebirth", "Make your player auto click", function(v)
	getgenv().Four = v
	while getgenv().Four == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",1,4)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection1:NewToggle("50 rebirth", "Make your player auto click", function(v)
	getgenv().Four = v
	while getgenv().Four == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",1,5)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection2:NewToggle("100 rebirth", "GIves 100 rebirth for 100M coins", function(v)
	getgenv().R100 = v
	while getgenv().R100 == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",2,1)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection2:NewToggle("250 rebirth", "GIves 250 rebirth for 250M coins", function(v)
	getgenv().R250 = v
	while getgenv().R250 == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",2,2)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection2:NewToggle("500 rebirth", "GIves 500 rebirth for 500M coins", function(v)
	getgenv().R500 = v
	while getgenv().R500 == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",2,3)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection2:NewToggle("1K rebirth", "GIves 1K rebirth for 1B coins", function(v)
	getgenv().R1k = v
	while getgenv().R1k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",2,4)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection2:NewToggle("2.5K rebirth", "GIves 2.5K rebirth for 2.5B coins", function(v)
	getgenv().R2k = v
	while getgenv().R2k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",2,5)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection3:NewToggle("5K rebirth", "GIves 5k rebirth for 5B coins", function(v)
	getgenv().R5k = v
	while getgenv().R5k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",3,1)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection3:NewToggle("10K rebirth", "GIves 10k rebirth for 10B coins", function(v)
	getgenv().R10k = v
	while getgenv().R10k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",3,2)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection3:NewToggle("25K rebirth", "GIves 25k rebirth for 25B coins", function(v)
	getgenv().R25k = v
	while getgenv().R25k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",3,3)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection3:NewToggle("50K rebirth", "GIves 50k rebirth for 50B coins", function(v)
	getgenv().R50k = v
	while getgenv().R50k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",3,4)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection3:NewToggle("100K rebirth", "GIves 100k rebirth for 100B coins", function(v)
	getgenv().R100k = v
	while getgenv().R100k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",3,5)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection4:NewToggle("250K rebirth", "GIves 250k rebirth for 250B coins", function(v)
	getgenv().R250k = v
	while getgenv().R250k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",4,1)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection4:NewToggle("500K rebirth", "GIves 500K rebirth for 500B coins", function(v)
	getgenv().R500K = v
	while getgenv().R500k == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",4,2)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection4:NewToggle("1M rebirth", "GIves 1M rebirth for 1t coins", function(v)
	getgenv().R1M = v
	while getgenv().R1M == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",4,3)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection4:NewToggle("2.5M rebirth", "GIves 2.5M rebirth for 2.5t coins", function(v)
	getgenv().R2M = v
	while getgenv().R2M == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",4,4)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

RebirthSection4:NewToggle("5M rebirth", "GIves 5M rebirth for 5t coins", function(v)
	getgenv().R5M = v
	while getgenv().R5M == true do
		game:GetService("ReplicatedStorage").Remote:FireServer("rebirthBoard",4,5)
		game:GetService("RunService").Heartbeat:wait();
	end
end)

Section:NewToggle("auto Orbs", "Make your player auto click", function(bool)
	getgenv().grabOrb = bool
	if bool then
		gOrb()
	end
end)

local button = creditSection:NewButton("Copy link", "Link to the website script", function()
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Copied",
		Text = "you have copied the link pastebin",
		Duration = 4
	})
	wait(0.5)
	setclipboard("https://scriptblox.com/script/Universal-Script-emptyness-hub-7276")

end)
creditSection:NewButton("By Roblox_Gaming")

function gOrb()
	while getgenv().grabOrb == true do wait(.2)
		for i,v in pairs (game:GetService("Workspace").Gems:GetDescendants()) do
			if v:IsA("Part") then
				game:GetService"Players".LocalPlayer.Character:FindFirstChild"HumanoidRootPart".CFrame = v.CFrame
			end
		end
	end
end
