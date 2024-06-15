local Window = OrionLib:MakeWindow({IntroText=(GameName .. " ; Elude map"),IntroIcon="rbxassetid://15315284749",Name=(GameName .. " ; " .. identifyexecutor()),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local miscTab = Window:MakeTab({Name="Misc",Icon="rbxassetid://7733673987",PremiumOnly=false});
local mainTab = Window:MakeTab({Name="Main",Icon="rbxassetid://7733673987",PremiumOnly=false});
local fpsSection = miscTab:AddSection({Name="FPS/IDs"});
local localSection = miscTab:AddSection({Name="Local"});
local glovesSection = mainTab:AddSection({Name="Gloves"});
local teleportSection = miscTab:AddSection({Name="Teleport"});
CanYouFps = fpsSection:AddLabel("FPS [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
fpsSection:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
glovesSection:AddButton({Name="Get Elude",Callback=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597);
	game:GetService("TeleportService"):Teleport(6403373529);
end});
glovesSection:AddButton({Name="Get Counter",Callback=function()
	Time = 121;
	fireclickdetector(game.Workspace.CounterLever.ClickDetector);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0);
	wait(0.2);
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true;
	for i = 1, Time do
		Time = Time - 1;
		game:GetService("StarterGui"):SetCore("SendNotification", {Title="Error",Text=("You wait time [ " .. Time .. " ] receive."),Icon="rbxassetid://7733658504",Duration=1});
		wait(1);
	end
	for i, v in pairs(workspace.Maze:GetDescendants()) do
		if v:IsA("ClickDetector") then
			fireclickdetector(v);
		end
	end
end});
glovesSection:AddDropdown({Name="Alchemist Plushie ( Pan glove quest )",Default="",Options={"Click","Teleport"},Callback=function(Value)
	if (Value == "Click") then
		fireclickdetector(workspace._ugcQuestObjectEludeHat.ClickDetector);
	elseif (Value == "Teleport") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame;
	end
end});
localSection:AddTextbox({Name="Speed Fly",Default="Userspeed",TextDisappear=false,Callback=function(Value)
	_G.SetSpeedFly = Value;
end});
_G.SetSpeedFly = 50;
localSection:AddToggle({Name="Start Fly",Default=false,Callback=function(Value)
	_G.StartFly = Value;
	if (_G.StartFly == false) then
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler")) then
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy();
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy();
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false;
		end
	elseif (_G.StartFly == true) then
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and (game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil) and (game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil)) then
			local bv = Instance.new("BodyVelocity");
			local bg = Instance.new("BodyGyro");
			bv.Name = "VelocityHandler";
			bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart;
			bv.MaxForce = Vector3.new(0, 0, 0);
			bv.Velocity = Vector3.new(0, 0, 0);
			bg.Name = "GyroHandler";
			bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart;
			bg.MaxTorque = Vector3.new(0, 0, 0);
			bg.P = 1000;
			bg.D = 50;
		end
	end
	while _G.StartFly do
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler")) then
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
game:GetService("RunService").RenderStepped:Connect(function()
	CanYouFps:Set("FPS [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
end);
