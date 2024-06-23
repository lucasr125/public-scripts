local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://15315284749",Name=(GameName .. " | " .. identifyexecutor()),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local Namecall;
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
	if ((getnamecallmethod() == "FireServer") and (tostring(self) == "Ban")) then
		return;
	elseif ((getnamecallmethod() == "FireServer") and (tostring(self) == "WalkSpeedChanged")) then
		return;
	elseif ((getnamecallmethod() == "FireServer") and (tostring(self) == "AdminGUI")) then
		return;
	end
	return Namecall(self, ...);
end);
if (workspace:FindFirstChild("AntiVoid") == nil) then
	local Anti = Instance.new("Part", workspace);
	Anti.Name = "AntiVoid";
	Anti.Position = Vector3.new(286, 71, -153);
	Anti.Size = Vector3.new(2000, 1, 2000);
	Anti.Anchored = true;
	Anti.Transparency = 1;
	Anti.CanCollide = false;
end
local Tab1 = Window:MakeTab({Name="Combat",Icon="rbxassetid://7733674079",PremiumOnly=false});
local Tab2 = Window:MakeTab({Name="Misc",Icon="rbxassetid://4370318685",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
Tab1:AddSlider({Name="Reach Slap Aura",Min=0,Max=50,Default=20,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Reach",Callback=function(Value)
	_G.ReachSlap = Value;
end});
Tab1:AddToggle({Name="Slap Aura",Default=false,Callback=function(Value)
	SlapAura = Value;
	while SlapAura do
		pcall(function()
			for i, v in pairs(game.Players:GetChildren()) do
				if ((v ~= game.Players.LocalPlayer) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character) then
					if (v.Character.Ragdolled.Value == false) then
						Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude;
						if (_G.ReachSlap >= Magnitude) then
							game.ReplicatedStorage.GeneralHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"), true);
						end
					end
				end
			end
		end);
		task.wait(0.7);
	end
end});
Tab1:AddSlider({Name="Reach HitBox",Min=2,Max=30,Default=20,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Reach",Callback=function(Value)
	_G.ReachHitbox = Value;
end});
Tab1:AddToggle({Name="Hitbox Player",Default=false,Callback=function(Value)
	_G.HitboxPlayer = Value;
	while _G.HitboxPlayer do
		for i, v in pairs(game.Players:GetChildren()) do
			if ((v ~= game.Players.LocalPlayer) and v.Character and v.Character:FindFirstChild("HumanoidRootPart")) then
				v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox, _G.ReachHitbox, _G.ReachHitbox);
				v.Character.HumanoidRootPart.Transparency = 0.75;
			end
		end
		task.wait();
	end
	if (_G.HitboxPlayer == false) then
		for i, v in pairs(game.Players:GetChildren()) do
			if ((v ~= game.Players.LocalPlayer) and v.Character and v.Character:FindFirstChild("HumanoidRootPart")) then
				v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
				v.Character.HumanoidRootPart.Transparency = 1;
			end
		end
	end
end});
Tab7:AddSlider({Name="Extend Glove",Min=2,Max=50,Default=5,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Extend",Callback=function(Value)
	_G.GloveExtendReach = Value;
end});
Tab7:AddDropdown({Name="Extend Option",Default="Meat Stick",Options={"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},Callback=function(Value)
	GloveExtendOption = Value;
end});
Tab7:AddToggle({Name="Reach Glove",Default=false,Callback=function(Value)
	_G.GloveExtendGet = Value;
	while _G.GloveExtendGet do
		if (game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil) then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool") and (v.Name ~= "Radio")) then
					if (v:FindFirstChild("Glove") ~= nil) then
						if (GloveExtendOption == "Meat Stick") then
							v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2);
						elseif (GloveExtendOption == "Pancake") then
							v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach);
						elseif (GloveExtendOption == "Growth") then
							v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach, _G.GloveExtendReach, _G.GloveExtendReach);
						elseif (GloveExtendOption == "North Korea Wall") then
							v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach, 0, _G.GloveExtendReach);
						elseif (GloveExtendOption == "Slight Extend") then
							v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7);
						end
						v:FindFirstChild("Glove").Transparency = 0.5;
					end
				end
			end
		else
			for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if (v:IsA("Tool") and (v.Name ~= "Radio")) then
					if (v:FindFirstChild("Glove") ~= nil) then
						if (GloveExtendOption == "Meat Stick") then
							v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, 2);
						elseif (GloveExtendOption == "Pancake") then
							v:FindFirstChild("Glove").Size = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach);
						elseif (GloveExtendOption == "Growth") then
							v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach, _G.GloveExtendReach, _G.GloveExtendReach);
						elseif (GloveExtendOption == "North Korea Wall") then
							v:FindFirstChild("Glove").Size = Vector3.new(_G.GloveExtendReach, 0, _G.GloveExtendReach);
						elseif (GloveExtendOption == "Slight Extend") then
							v:FindFirstChild("Glove").Size = Vector3.new(3, 3, 3.7);
						end
						v:FindFirstChild("Glove").Transparency = 0.5;
					end
				end
			end
		end
		task.wait();
	end
	if (_G.GloveExtendGet == false) then
		if (game.Players.LocalPlayer:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") ~= nil) then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool") and (v.Name ~= "Radio")) then
					if (v:FindFirstChild("Glove") ~= nil) then
						v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7);
						v:FindFirstChild("Glove").Transparency = 0;
					end
				end
			end
		else
			for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if (v:IsA("Tool") and (v.Name ~= "Radio")) then
					if (v:FindFirstChild("Glove") ~= nil) then
						v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7);
						v:FindFirstChild("Glove").Transparency = 0;
					end
				end
			end
		end
	end
end});
Tab2:AddToggle({Name="Anti Thorn",Default=false,Callback=function(Value)
	game.Workspace['AntiVoid'].CanCollide = Value;
	if (Value == true) then
		game.Workspace['AntiVoid'].Transparency = 0.5;
	else
		game.Workspace['AntiVoid'].Transparency = 1;
	end
end});
Tab2:AddToggle({Name="Anti Ragdoll",Default=false,Callback=function(Value)
	_G.AntiRagdoll = Value;
	if _G.AntiRagdoll then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0;
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
				if ((game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true) and _G.AntiRagdoll) then
					repeat
						task.wait();
						game.Players.LocalPlayer.Character.Torso.Anchored = true;
					until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false 
					game.Players.LocalPlayer.Character.Torso.Anchored = false;
				end
			end);
		end);
	end
end});
Tab2:AddButton({Name="Anti Lag",Callback=function()
	_G.Settings = {Players={["Ignore Me"]=true,["Ignore Others"]=true},Meshes={Destroy=false,LowDetail=true},Images={Invisible=true,LowDetail=false,Destroy=false},Other={["No Particles"]=true,["No Camera Effects"]=true,["No Explosions"]=true,["No Clothes"]=true,["Low Water Graphics"]=true,["No Shadows"]=true,["Low Rendering"]=true,["Low Quality Parts"]=true}};
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))();
end});
Tab2:AddToggle({Name="Teleport Flag",Default=false,Callback=function(Value)
	WinTeleport = Value;
	while WinTeleport do
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			for i, v in pairs(game.Workspace:GetChildren()) do
				if ((v.Name == "Part") and v:FindFirstChild("TouchInterest")) then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, -6, 0);
				end
			end
		end
		task.wait();
	end
end});
Tab2:AddTextbox({Name="Speed Fly",Default="Userspeed",TextDisappear=false,Callback=function(Value)
	_G.SetSpeedFly = Value;
end});
_G.SetSpeedFly = 50;
Tab2:AddToggle({Name="Start Fly",Default=false,Callback=function(Value)
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
Tab2:AddButton({Name="[ Destroy GUI ] [ Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy();
	end
end});
