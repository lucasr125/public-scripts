local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://15315284749",Name=(GameName .. " / Elude"),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local Tab = Window:MakeTab({Name="Misc",Icon="rbxassetid://7733673987",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
local Fps = Tab:AddSection({Name="Fps You"});
CanYouFps = Tab:AddLabel("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
Tab:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
AutoSetInfo = Tab:AddToggle({Name="Auto Set Info",Default=false,Callback=function(Value)
	_G.AutoSetInfo = Value;
	while _G.AutoSetInfo do
		CanYouFps:Set("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
		task.wait();
	end
end});
Tab:AddButton({Name="Get Elude",Callback=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597);
end});
Tab:AddButton({Name="Get Counter",Callback=function()
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
Tab:AddButton({Name="TP back to Slap Battles",Callback=function()
	game:GetService("TeleportService"):Teleport(6403373529);
end});
Tab:AddDropdown({Name="Alchemist Plushie",Default="",Options={"Click","Teleport"},Callback=function(Value)
	if (Value == "Click") then
		fireclickdetector(workspace._ugcQuestObjectEludeHat.ClickDetector);
	elseif (Value == "Teleport") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace._ugcQuestObjectEludeHat.Handle.CFrame;
	end
end});
Tab:AddTextbox({Name="Speed Fly",Default="Userspeed",TextDisappear=false,Callback=function(Value)
	_G.SetSpeedFly = Value;
end});
_G.SetSpeedFly = 50;
Tab:AddToggle({Name="Start Fly",Default=false,Callback=function(Value)
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
Tab:AddButton({Name="[ Destroy GUI ] [ Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy();
	end
end});
