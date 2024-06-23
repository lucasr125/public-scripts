local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = (GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab:AddLabel("Owner Credits Script By [ Giang ]")
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck")
Tab:AddParagraph("Game's ID [ "..game.PlaceId.." ]","Server ID [ "..game.JobId.." ]")
local InfoServer = Tab:AddSection({Name = "Misc"})

Tab:AddButton({
	Name = "Get Badge",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                v.HoldDuration = 0
            end
        end
wait(0.08)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
wait(1.5)
game:GetService("TeleportService"):Teleport(6403373529)
  	end 
})

Tab:AddButton({
	Name = "[ Destroy GUI ] [ Toggle Gui ]",
	Callback = function()
OrionLib:Destroy()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
end
  	end 
})
end
