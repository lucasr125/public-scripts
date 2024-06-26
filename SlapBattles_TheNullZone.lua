local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://15315284749",Name=(GameName .. " / The null zone"),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local Tab = Window:MakeTab({Name="Misc",Icon="rbxassetid://4370318685",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
Tab:AddToggle({Name="Anti Null",Default=false,Callback=function(Value)
	AntiNull = Value;
	while AntiNull do
		for i, v in pairs(game.Workspace.Mobs:GetChildren()) do
			if ((v.Name == "Imp") and v:FindFirstChild("Body")) then
				game:GetService("ReplicatedStorage").b:FireServer(v.Body);
			end
		end
		task.wait();
	end
end});
Tab:AddToggle({Name="Anti Cooldown",Default=false,Callback=function(Value)
	AntiCooldown = Value;
	while AntiCooldown do
		local player = game.Players.LocalPlayer;
		local character = player.Character or player.CharacterAdded:Wait();
		local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool");
		local localscript = tool:FindFirstChildOfClass("LocalScript");
		local localscriptclone = localscript:Clone();
		localscriptclone = localscript:Clone();
		localscriptclone:Clone();
		localscript:Destroy();
		localscriptclone.Parent = tool;
		task.wait();
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
Tab:AddDropdown({Name="Rob Plushie",Default="",Options={"Click","Teleport"},Callback=function(Value)
	if (Value == "Click") then
		fireclickdetector(workspace._ugcQuestObjectBobPlushie.ClickDetector);
	elseif (Value == "Teleport") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace._ugcQuestObjectBobPlushie.Handle.CFrame;
	end
end});
Tab:AddDropdown({Name="Teleport Or Get Badge",Default="",Options={"Null","Tinkever","Lobby"},Callback=function(Value)
	if (Value == "Null") then
		fireclickdetector(workspace.Model.Handle.ClickDetector);
	elseif (Value == "Tinkever") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4833.31, -214, 800.529);
		wait(2);
		fireclickdetector(workspace:GetChildren()[13].Handle.ClickDetector);
	elseif (Value == "Lobby") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5466, -1, -585);
	end
end});
Tab:AddButton({Name="[ Destroy GUI ] [ Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy();
	end
end});
