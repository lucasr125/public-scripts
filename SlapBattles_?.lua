local Window = OrionLib:MakeWindow({IntroText=(GameName .. " / Server Elude"),Name=(GameName .. " - " .. identifyexecutor()),HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
	if (game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil) then
		local bv = Instance.new("BodyVelocity");
		bv.Name = "VelocityHandler";
		bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart;
		bv.MaxForce = Vector3.new(0, 0, 0);
		bv.Velocity = Vector3.new(0, 0, 0);
	end
	if (game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil) then
		local bg = Instance.new("BodyGyro");
		bg.Name = "GyroHandler";
		bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart;
		bg.MaxTorque = Vector3.new(0, 0, 0);
		bg.P = 1000;
		bg.D = 50;
	end
	local Tab = Window:MakeTab({Name="Misc",Icon="rbxassetid://7733673987",PremiumOnly=false});
	Tab:AddLabel("Owner Credits Script By [ Giang ]");
	Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
	local Fps = Tab:AddSection({Name="Fps You"});
	CanYouFps = Tab:AddLabel("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
	Tab:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
	Tab:AddButton({Name="Get Elude",Callback=function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597);
		game:GetService("TeleportService"):Teleport(6403373529);
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
	Tab:AddButton({Name="Get Chain",Callback=function()
		if (game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000) then
			local teleportFunc = queueonteleport or queue_on_teleport or (syn and syn.queue_on_teleport);
			if teleportFunc then
				teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
task.wait(2)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
task.wait(0.5)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
task.wait(4.7)
game:GetService("TeleportService"):Teleport(6403373529)
    ]]);
			end
			game:GetService("TeleportService"):Teleport(9431156611);
		else
			OrionLib:MakeNotification({Name="Error",Content="You don't have 1000 slap.",Image="rbxassetid://7733658504",Time=5});
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
	Tab:AddButton({Name="View Testing Server",Callback=function()
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
	game:GetService("RunService").RenderStepped:Connect(function()
		CanYouFps:Set("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
	end);
