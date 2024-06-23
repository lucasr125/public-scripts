local Window = OrionLib:MakeWindow({IntroText=GameName,IntroIcon="rbxassetid://15315284749",Name=(GameName .. " / Slap royale"),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
local bypass;
bypass = hookmetamethod(game, "__namecall", function(method, ...)
	if ((getnamecallmethod() == "FireServer") and (method == game.ReplicatedStorage.Events.Ban)) then
		return;
	elseif ((getnamecallmethod() == "FireServer") and (method == game.ReplicatedStorage.Events.AdminGUI)) then
		return;
	elseif ((getnamecallmethod() == "FireServer") and (method == game.ReplicatedStorage.Events.WS)) then
		return;
	elseif ((getnamecallmethod() == "FireServer") and (method == game.ReplicatedStorage.Events.WS2)) then
		return;
	end
	return bypass(method, ...);
end);
if (workspace:FindFirstChild("AntiLava") == nil) then
	local AntiLava = Instance.new("Part", workspace);
	AntiLava.Name = "AntiLava";
	AntiLava.Position = Vector3.new(-238, -43, 401);
	AntiLava.Size = Vector3.new(150, 30, 150);
	AntiLava.Anchored = true;
	AntiLava.Transparency = 1;
	AntiLava.CanCollide = false;
	local AntiAcid = Instance.new("Part", AntiLava);
	AntiAcid.Position = Vector3.new(-70, -20, -725);
	AntiAcid.Name = "AntiAcid";
	AntiAcid.Size = Vector3.new(155, 35, 144);
	AntiAcid.Anchored = true;
	AntiAcid.Transparency = 1;
	AntiAcid.CanCollide = false;
end
local Tab = Window:MakeTab({Name="Combat",Icon="rbxassetid://7733674079",PremiumOnly=false});
local Tab1 = Window:MakeTab({Name="Antis",Icon="rbxassetid://7734056608",PremiumOnly=false});
local Tab2 = Window:MakeTab({Name="Misc",Icon="rbxassetid://4370318685",PremiumOnly=false});
local Tab3 = Window:MakeTab({Name="Local",Icon="rbxassetid://4335489011",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
Tab:AddSlider({Name="Reach Slap Aura",Min=10,Max=50,Default=25,Color=Color3.fromRGB(140, 185, 255),Increment=1,ValueName="Reach",Callback=function(Value)
	ReachAura = Value;
end});
Tab:AddSlider({Name="Extend Glove",Min=2,Max=50,Default=5,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Extend",Callback=function(Value)
	_G.GloveExtendReach = Value;
end});
Tab:AddDropdown({Name="Extend Option",Default="Meat Stick",Options={"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},Callback=function(Value)
	GloveExtendOption = Value;
end});
Tab:AddToggle({Name="Slap Aura",Default=false,Callback=function(Value)
	SlapAura = Value;
	while SlapAura do
		pcall(function()
			for i, v in pairs(game.Players:GetChildren()) do
				if ((v ~= game.Players.LocalPlayer) and v.Character) then
					if ((v.Character:FindFirstChild("Dead") == nil) and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character:WaitForChild("inMatch").Value == true) and (game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true)) then
						Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude;
						if (ReachAura >= Magnitude) then
							game.ReplicatedStorage.Events.Slap:FireServer(v.Character:WaitForChild("HumanoidRootPart"));
						end
					end
				end
			end
		end);
		task.wait();
	end
end});
Tab:AddToggle({Name="Reach Glove",Default=false,Callback=function(Value)
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
Tab:AddButton({Name="Leave Bus Early [ Votes Kick ]",Callback=function()
	game:GetService("ReplicatedStorage").Events.BusJumping:FireServer();
	repeat
		task.wait();
	until game.Players.LocalPlayer.PlayerGui:FindFirstChild("JumpPrompt") 
	game.Players.LocalPlayer.PlayerGui.JumpPrompt:Destroy();
end});
Tab:AddButton({Name="Get All Item",Callback=function()
	if (game.Players.LocalPlayer.Character.inMatch.Value == true) then
		for i, v in ipairs(game.Workspace.Items:GetChildren()) do
			if ((v.ClassName == "Tool") and v:FindFirstChild("Handle")) then
				v.Handle.Anchored = false;
				v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
				game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(v);
				game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
			end
		end
		wait(0.25);
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
	else
		OrionLib:MakeNotification({Name="Error",Content="You have start bus get all item, but you got kick if item in your hand for a long time.",Image="rbxassetid://7733658504",Time=5});
	end
end});
Tab:AddButton({Name="Infinity 250 Power",Callback=function()
	for i = 1, 2 do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["True Power"]);
		game.Players.LocalPlayer.Character["True Power"]:Activate();
	end
end});
Tab:AddButton({Name="Use Item Power",Callback=function()
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if ((v.Name == "Bull's essence") or (v.Name == "Potion of Strength") or (v.Name == "Boba") or (v.Name == "Speed Potion") or (v.Name == "Frog Potion") or (v.Name == "Strength Brew") or (v.Name == "Frog Brew") or (v.Name == "Speed Brew")) then
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
			v:Activate();
		end
	end
end});
Tab:AddButton({Name="Bomb Bus",Callback=function()
	if (game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true) then
		for i, v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v.Name == "Bomb") then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
				v:Activate();
			end
		end
	else
		OrionLib:MakeNotification({Name="Error",Content="You have start bus.",Image="rbxassetid://7733658504",Time=5});
	end
end});
Tab:AddToggle({Name="Auto Use Item",Default=false,Callback=function(Value)
	_G.AutoUseItem = state;
	while _G.AutoUseItem do
		for i, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if ((v.ClassName == "Tool") and v:FindFirstChild("Handle")) then
				v:Activate();
			end
		end
		task.wait();
	end
end});
Tab:AddToggle({Name="Glove Esp",Default=false,Callback=function(Value)
	GloveESP = Value;
	if (GloveESP == false) then
		for i, v in ipairs(game.Players:GetChildren()) do
			if (v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp")) then
				v.Character.Head.GloveEsp:Destroy();
			end
		end
	end
	while GloveESP do
		for i, v in ipairs(game.Players:GetChildren()) do
			if ((v ~= game.Players.LocalPlayer) and v.Character and v.Character:FindFirstChild("Head") and (v.Character.inMatch.Value == true) and (v.Character.Head:FindFirstChild("GloveEsp") == nil)) then
				GloveEsp = Instance.new("BillboardGui", v.Character.Head);
				GloveEsp.Adornee = v.Character.Head;
				GloveEsp.Name = "GloveEsp";
				GloveEsp.Size = UDim2.new(0, 100, 0, 150);
				GloveEsp.StudsOffset = Vector3.new(0, 1, 0);
				GloveEsp.AlwaysOnTop = true;
				GloveEsp.StudsOffset = Vector3.new(0, 3, 0);
				GloveEspText = Instance.new("TextLabel", GloveEsp);
				GloveEspText.BackgroundTransparency = 1;
				GloveEspText.Size = UDim2.new(0, 100, 0, 100);
				GloveEspText.TextSize = 25;
				GloveEspText.Font = Enum.Font.FredokaOne;
				GloveEspText.TextColor3 = Color3.new(255, 255, 255);
				GloveEspText.TextStrokeTransparency = 0;
				GloveEspText.Text = "Glove [ " .. v.Glove.Value .. " ]";
			end
		end
		task.wait();
	end
end});
Tab:AddButton({Name="Ese Item",Callback=function()
	for i, v in ipairs(game.Workspace.Items:GetChildren()) do
		if ((v.ClassName == "Tool") and v:FindFirstChild("Handle") and (v:FindFirstChild("ItemESP") == nil)) then
			ItemESP = Instance.new("BillboardGui", v.Handle);
			ItemESP.Adornee = v.Handle;
			ItemESP.Name = "ItemESP";
			ItemESP.Size = UDim2.new(0, 100, 0, 150);
			ItemESP.StudsOffset = Vector3.new(0, 1, 0);
			ItemESP.AlwaysOnTop = true;
			ItemESP.StudsOffset = Vector3.new(0, 3, 0);
			ItemESPText = Instance.new("TextLabel", ItemESP);
			ItemESPText.BackgroundTransparency = 1;
			ItemESPText.Size = UDim2.new(0, 50, 0, 50);
			ItemESPText.TextSize = 14;
			ItemESPText.Font = Enum.Font.FredokaOne;
			ItemESPText.TextColor3 = Color3.new(255, 255, 255);
			ItemESPText.TextStrokeTransparency = 0;
			ItemESPText.Text = "Item [ " .. v.Name .. " ]";
		end
	end
end});
Tab:AddButton({Name="[ Destroy GUI ] [ Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy();
	end
end});
Tab:AddTextbox({Name="Speed Fly",Default="Userspeed",TextDisappear=false,Callback=function(Value)
	_G.SetSpeedFly = Value;
end});
_G.SetSpeedFly = 100;
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
Tab2:AddButton({Name="Get Lab Code",Callback=function()
	if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th";
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "1st") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				first = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				first = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				first = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				first = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "2nd") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				second = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				second = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				second = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				second = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "3rd") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				third = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				third = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				third = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				third = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "4th") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				fourth = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				fourth = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				fourth = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				fourth = "2";
			end
		end
	end
	CodeEsp = first .. second .. third .. fourth;
	OrionLib:MakeNotification({Name=("You have code [ " .. CodeEsp .. " ]"),Content="",Image="rbxassetid://7733919105",Time=5});
end});
Tab2:AddButton({Name="Get Chain",Callback=function()
	if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd";
		game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th";
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "1st") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				first = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				first = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				first = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				first = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				first = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				first = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				first = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				first = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "2nd") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				second = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				second = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				second = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				second = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				second = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				second = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				second = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				second = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "3rd") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				third = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				third = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				third = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				third = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				third = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				third = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				third = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				third = "2";
			end
		end
	end
	for i, v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
		if (v.Name == "4th") then
			if (v.Image == "http://www.roblox.com/asset/?id=9648769161") then
				fourth = "4";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648765536") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648762863") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648759883") then
				fourth = "9";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648755440") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648752438") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648749145") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648745618") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648742013") then
				fourth = "7";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648738553") then
				fourth = "8";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648734698") then
				fourth = "2";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648730082") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648723237") then
				fourth = "3";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648718450") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648715920") then
				fourth = "6";
			elseif (v.Image == "http://www.roblox.com/asset/?id=9648712563") then
				fourth = "2";
			end
		end
	end
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector);
	wait(0.25);
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector);
	wait(0.25);
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector);
	wait(0.25);
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector);
	wait(0.25);
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector);
	wait(0.25);
	fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector);
end});
Tab2:AddButton({Name="Free Emotes [ Type /e emotename ]",Callback=function()
	Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid);
	Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid);
	Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid);
	Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid);
	Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid);
	L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid);
	Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid);
	Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid);
	Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid);
	Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid);
	game.Players.LocalPlayer.Chatted:connect(function(msg)
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid);
			Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid);
			Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid);
			Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid);
			Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid);
			L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid);
			Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid);
			Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid);
			Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid);
			Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid);
			if (string.lower(msg) == "/e floss") then
				Floss:Play();
			elseif (string.lower(msg) == "/e groove") then
				Groove:Play();
			elseif (string.lower(msg) == "/e headless") then
				Headless:Play();
			elseif (string.lower(msg) == "/e helicopter") then
				Helicopter:Play();
			elseif (string.lower(msg) == "/e kick") then
				Kick:Play();
			elseif (string.lower(msg) == "/e l") then
				L:Play();
			elseif (string.lower(msg) == "/e laugh") then
				Laugh:Play();
			elseif (string.lower(msg) == "/e parker") then
				Parker:Play();
			elseif (string.lower(msg) == "/e spasm") then
				Spasm:Play();
			elseif (string.lower(msg) == "/e thriller") then
				Thriller:Play();
			end
			EP = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
		end
	end);
	game:GetService("RunService").Heartbeat:Connect(function()
		if (((EP ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Floss.IsPlaying) or Groove.IsPlaying or Headless.IsPlaying or Helicopter.IsPlaying or Kick.IsPlaying or L.IsPlaying or Laugh.IsPlaying or Parker.IsPlaying or Spasm.IsPlaying or Thriller.IsPlaying) then
			Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - EP).Magnitude;
			if (Magnitude > 1) then
				Floss:Stop();
				Groove:Stop();
				Headless:Stop();
				Helicopter:Stop();
				Kick:Stop();
				L:Stop();
				Laugh:Stop();
				Parker:Stop();
				Spasm:Stop();
				Thriller:Stop();
			end
		end
	end);
end});
Tab1:AddDropdown({Name="Remove",Default="",Options={"Lava","Zone Blur","Acid"},Callback=function(Value)
	if (Value == "Lava") then
		for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if (v.Name == "Lava") then
				v:Destroy();
			end
		end
	elseif (Value == "Zone Blur") then
		for _, v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if (v.Name == "ZoneEffects") then
				v:Destroy();
			end
		end
	elseif (Value == "Acid") then
		for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
			if (v.Name == "Acid") then
				v:Destroy();
			end
		end
	end
end});
Tab1:AddDropdown({Name="Safe",Default="",Options={"Lava","Zone Blur Remove","Acid"},Callback=function(Value)
	if (Value == "Lava") then
		workspace.Map.DragonDepths.Lava.CanTouch = false;
	elseif (Value == "Zone Blur Remove") then
		for _, v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if (v.Name == "ZoneEffects") then
				v:Destroy();
			end
		end
	elseif (Value == "Acid") then
		for _, v in ipairs(workspace.Map.AcidAbnormality:GetChildren()) do
			if ((v.Name == "Acid") and v:IsA("BasePart") and v:FindFirstChildWhichIsA("TouchTransmitter")) then
				v.CanTouch = false;
			end
		end
	end
end});
Tab1:AddToggle({Name="Anti Zone",Default=false,Callback=function(Value)
	RemoveZone = Value;
	game.Players.LocalPlayer.Character:WaitForChild("inZone").Changed:Connect(function()
		if RemoveZone then
			game.Players.LocalPlayer.Character:WaitForChild("inZone").Value = false;
		end
	end);
end});
Tab1:AddToggle({Name="Anti Ice",Default=false,Callback=function(Value)
	_G.AntiIce = Value;
	while _G.AntiIce do
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if (v.Name == "Icecube") then
				v:Destroy();
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false;
				game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true;
			end
		end
		task.wait();
	end
end});
Tab1:AddToggle({Name="Anti Lava & Acid",Default=false,Callback=function(Value)
	game.Workspace['AntiLava'].CanCollide = Value;
	game.Workspace['AntiLava']['AntiAcid'].CanCollide = Value;
end});
Tab1:AddToggle({Name="Anti Record",Default=false,Callback=function(Value)
	AntiRecord = Value;
end});
for i, p in pairs(game.Players:GetChildren()) do
	if (p ~= game.Players.LocalPlayer) then
		p.Chatted:Connect(function(message)
			Words = message:split(" ");
			if (AntiRecord == true) then
				for i, v in pairs(Words) do
					if (v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence")) then
						game.Players.LocalPlayer:Kick("Possible player recording detected." .. " [ " .. p.Name .. " ]" .. " [ " .. message .. " ]");
					end
				end
			end
		end);
	end
end
game.Players.PlayerAdded:Connect(function(Player)
	Player.Chatted:Connect(function(message)
		Words = message:split(" ");
		if (AntiRecord == true) then
			for i, v in pairs(Words) do
				if (v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence")) then
					game.Players.LocalPlayer:Kick("Possible player recording detected." .. " [ " .. Player.Name .. " ]" .. " [ " .. message .. " ]");
				end
			end
		end
	end);
end);
Tab1:AddToggle({Name="Anti Ragdoll",Default=false,Callback=function(Value)
	_G.AntiRagdoll = Value;
	while _G.AntiRagdoll do
		if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")) then
			if (game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true) then
				repeat
					task.wait();
					game.Players.LocalPlayer.Character.Torso.Anchored = true;
				until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false 
				game.Players.LocalPlayer.Character.Torso.Anchored = false;
			end
		end
		task.wait();
	end
end});
Tab3:AddSlider({Name="Walkspeed",Min=20,Max=1000,Default=20,Color=Color3.fromRGB(140, 185, 255),Increment=1,ValueName="WS",Callback=function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value;
	Walkspeed = Value;
end});
Tab3:AddToggle({Name="Keep Walkspeed",Default=false,Callback=function(Value)
	KeepWalkspeed = Value;
	while KeepWalkspeed do
		if ((game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil) and (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed)) then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed;
		end
		task.wait();
	end
end});
Tab3:AddSlider({Name="Jumppower",Min=50,Max=1000,Default=50,Color=Color3.fromRGB(255, 185, 140),Increment=1,ValueName="JP",Callback=function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value;
	Jumppower = Value;
end});
Tab3:AddToggle({Name="Keep Jumppower",Default=false,Callback=function(Value)
	KeepJumppower = Value;
	while KeepJumppower do
		if ((game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil) and (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower)) then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower;
		end
		task.wait();
	end
end});
