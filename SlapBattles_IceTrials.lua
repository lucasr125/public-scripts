local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://15315284749",Name=(GameName .. " | " .. identifyexecutor()),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local miscTab = Window:MakeTab({Name="Misc",Icon="rbxassetid://7733673987",PremiumOnly=false});
local mainTab = Window:MakeTab({Name="Main",Icon="rbxassetid://7733673987",PremiumOnly=false});
local fpsSection = miscTab:AddSection({Name="FPS/IDs"});
local localSection = miscTab:AddSection({Name="Local"});
local teleportSection = miscTab:AddSection({Name="Teleport"});
local glovesSection = mainTab:AddSection({Name="Glove"});
CanYouFps = fpsSection:AddLabel("FPS [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
fpsSection:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
localSection:AddTextbox({Name="Speed Fly",Default="Userspeed",TextDisappear=false,Callback=function(Value)
	_G.SetSpeedFly = Value;
end});
_G.SetSpeedFly = 50;
localSection:AddToggle({Name="Start Fly",Default=false,Callback=function(Value)
	_G.StartFly = Value;
	if (_G.StartFly == false) then
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler")) then
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(0, 0, 0);
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(0, 0, 0);
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false;
		end
	end
	while _G.StartFly do
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler")) then
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(8999999488, 8999999488, 8999999488);
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true;
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame;
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new();
			if (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + (game.Workspace.CurrentCamera.CFrame.RightVector * require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly);
			end
			if (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + (game.Workspace.CurrentCamera.CFrame.RightVector * require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly);
			end
			if (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - (game.Workspace.CurrentCamera.CFrame.LookVector * require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly);
			end
			if (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - (game.Workspace.CurrentCamera.CFrame.LookVector * require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly);
			end
		end
		task.wait();
	end
end});
teleportSection:AddButton({Name="Teleport back to Slap Battles",Callback=function()
	game:GetService("TeleportService"):Teleport(6403373529);
end});
teleportSection:AddButton({Name="View Testing Server",Callback=function()
	local teleportFunc = queueonteleport or queue_on_teleport or (syn and syn.queue_on_teleport);
	if teleportFunc then
		teleportFunc([[
			if not game:IsLoaded() then
				game.Loaded:Wait()
			end
			local localPlr = game:GetService("Players").LocalPlayer
			repeat wait() until localPlr
			game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("GuiService"):ClearError()
				game.CoreGui.RobloxLoadingGUI:Destroy()
			end)
		]]);
	end
	game:GetService("TeleportService"):Teleport(9020359053);
end});
localSection:AddButton({Name="[ Destroy GUI ] [ All Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
			if (v.Name == "ToggleUi") then
				v:Destroy();
			end
		end
	end
end});
glovesSection:AddButton({Name="Get Frostbite glove",Callback=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56);
	wait(0.7);
	for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
		if (v.ClassName == "ProximityPrompt") then
			v.HoldDuration = 0;
		end
	end
	wait(0.08);
	for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
		if (v.ClassName == "ProximityPrompt") then
			fireproximityprompt(v);
		end
	end
	wait(1.5);
	game:GetService("TeleportService"):Teleport(6403373529);
end});
game:GetService("RunService").RenderStepped:Connect(function()
	CanYouFps:Set("FPS [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
end);
