local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://7733955740",Name=(GameName .. " | " .. identifyexecutor()),HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local Tab = Window:MakeTab({Name="Misc",Icon="rbxassetid://4370318685",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
local InfoServer = Tab:AddSection({Name="Info"});
CanYouFps = Tab:AddLabel("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
CanYouPing = Tab:AddLabel("Your Ping [ " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString() .. " ]");
TimeServer = Tab:AddLabel("Server Time [ " .. math.floor((workspace.DistributedGameTime / 60) / 60) .. " Hour | " .. (math.floor(workspace.DistributedGameTime / 60) - (math.floor((workspace.DistributedGameTime / 60) / 60) * 60)) .. " Minute | " .. (math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60)) .. " Second ]");
Tab:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
game:GetService("RunService").RenderStepped:Connect(function()
	CanYouFps:Set("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
	CanYouPing:Set("Your Ping [ " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString() .. " ]");
	TimeServer:Set("Server Time [ " .. math.floor((workspace.DistributedGameTime / 60) / 60) .. " Hour | " .. (math.floor(workspace.DistributedGameTime / 60) - (math.floor((workspace.DistributedGameTime / 60) / 60) * 60)) .. " Minutes | " .. (math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60)) .. " Second ]");
end);
local InfoServer = Tab:AddSection({Name="Misc"});
Tab:AddButton({Name="Teleport Enter Final Room",Callback=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59);
	task.wait(4);
	if getconnections then
		for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
			v:Disable();
		end
	end
	OrionLib:MakeNotification({Name="Error",Content="Turned on Anti Afk",Image="rbxassetid://7733658504",Time=3});
	OrionLib:MakeNotification({Name="Error",Content="You have to wait the 1 hour, or you have view Info.",Image="rbxassetid://7733658504",Time=5});
end});
Tab:AddButton({Name="[ Destroy GUI ] [ All Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
			if (v.Name == "ToggleUi") then
				v:Destroy();
			end
		end
	end
end});
