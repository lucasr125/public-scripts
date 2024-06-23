local Window = OrionLib:MakeWindow({IntroIcon="rbxassetid://15315284749",Name=(GameName .. " | " .. identifyexecutor()),IntroToggleIcon="rbxassetid://7734091286",HidePremium=false,SaveConfig=false,IntroEnabled=false,ConfigFolder="slap battles"});
if (workspace:FindFirstChild("VoidPart") == nil) then
	local VoidPart = Instance.new("Part", workspace);
	VoidPart.Name = "VoidPart";
	VoidPart.Position = Vector3.new(-36, -3, 16);
	VoidPart.Size = Vector3.new(2000, 1, 2000);
	VoidPart.Anchored = true;
	VoidPart.Transparency = 1;
	VoidPart.CanCollide = false;
end
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
local Tab = Window:MakeTab({Name="Combat",Icon="rbxassetid://7733674079",PremiumOnly=false});
local Tab2 = Window:MakeTab({Name="Anti",Icon="rbxassetid://4370318685",PremiumOnly=false});
Tab:AddLabel("Owner Credits Script By [ Giang ]");
Tab:AddLabel("DonjoSx Shared Script Me, GoodLuck");
local InfoServer = Tab:AddSection({Name="Info"});
CanYouFps = Tab:AddLabel("Your Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
CheckSlap = Tab:AddLabel("Check Slap [ " .. game.Players.LocalPlayer.leaderstats.Slaps.Value .. " ]");
CheckHealth = Tab:AddLabel("Check Health [ " .. game.Players.LocalPlayer.Character.Humanoid.Health .. " ]");
Tab:AddLabel("You're Using Glove [ " .. game.Players.LocalPlayer.leaderstats.Glove.Value .. " ]");
Tab:AddParagraph("Game's ID [ " .. game.PlaceId .. " ]", "Server ID [ " .. game.JobId .. " ]");
AutoSetInfo = Tab:AddToggle({Name="Auto Set Info",Default=false,Callback=function(Value)
	_G.AutoSetInfo = Value;
	while _G.AutoSetInfo do
		CanYouFps:Set("Can You Fps [ " .. math.floor(workspace:GetRealPhysicsFPS()) .. " ]");
		CheckSlap:Set("Check Slap [ " .. game.Players.LocalPlayer.leaderstats.Slaps.Value .. " ]");
		CheckHealth:Set("Check Health [ " .. game.Players.LocalPlayer.Character.Humanoid.Health .. " ]");
		task.wait();
	end
end});
local Combat = Tab:AddSection({Name="Combat"});
Tab:AddToggle({Name="Damage Boss",Default=false,Callback=function(Value)
	_G.DameBossBob = Value;
	while _G.DameBossBob do
		game.Workspace.bobBoss.DamageEvent:FireServer();
		task.wait();
	end
end});
Tab:AddToggle({Name="Auto Click Tycoon",Default=false,Callback=function(Value)
	_G.AutoTycoon = Value;
	while _G.AutoTycoon do
		for _, v in pairs(workspace:GetChildren()) do
			if (string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click")) then
				fireclickdetector(v.Click.ClickDetector, 0);
				fireclickdetector(v.Click.ClickDetector, 1);
			end
		end
		task.wait();
	end
end});
SpawnRob = Tab:AddToggle({Name="Auto Spawn Rob",Default=false,Callback=function(Value)
	_G.AutoSpawnRob = Value;
	if (game.Players.LocalPlayer.leaderstats.Glove.Value == "rob") then
		while _G.AutoSpawnRob do
			game:GetService("ReplicatedStorage").rob:FireServer();
			wait(15);
		end
	elseif (Value == true) then
		OrionLib:MakeNotification({Name="Error",Content="Get ethernal bob boss fight phase 6.",Image="rbxassetid://7733658504",Time=5});
		wait(0.05);
		SpawnRob:Set(false);
	end
end});
Tab:AddDropdown({Name="Glove Slap Aura Bob",Default="Killstreak",Options={"Killstreak","Reaper","God's Hand","Tycoon"},Callback=function(Value)
	GloveSlap = Value;
end});
Tab:AddButton({Name="Slap Aura Bob",Callback=function()
	if (GloveSlap == "Killstreak") then
		for _, v in ipairs(workspace:GetDescendants()) do
			if (v.Name == "BobClone") then
				game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"));
			end
		end
	elseif (GloveSlap == "Reaper") then
		for _, v in ipairs(workspace:GetDescendants()) do
			if (v.Name == "BobClone") then
				game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"));
			end
		end
	elseif (GloveSlap == "God's Hand") then
		for _, v in ipairs(workspace:GetDescendants()) do
			if (v.Name == "BobClone") then
				game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"));
			end
		end
	elseif (GloveSlap == "Tycoon") then
		for _, v in ipairs(workspace:GetDescendants()) do
			if (v.Name == "BobClone") then
				game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"));
			end
		end
	end
end});
Tab:AddLabel("Script");
Tab:AddButton({Name="Fe fly V3",Callback=function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))();
end});
Tab:AddButton({Name="Anti Lag",Callback=function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Anti-lag.lua"))();
end});
Tab:AddButton({Name="Inf Yield Delta",Callback=function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/lxnnydev/c533c374ca4c1dcef4e1e10e33fa4a0c/raw/03e74f184f801dad77d3ebe1e2f18c6ac87ca612/delta___IY.gistfile1.txt.lua", true))();
end});
Tab:AddButton({Name="Inf Yield",Callback=function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))();
end});
Tab:AddButton({Name="RemoteSpy",Callback=function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/RemoteSpy-V2.lua", true))();
end});
Tab:AddButton({Name="TP back to Slap Battles",Callback=function()
	game:GetService("TeleportService"):Teleport(6403373529);
end});
Tab:AddButton({Name="[ Destroy GUI ] [ Toggle Gui ]",Callback=function()
	OrionLib:Destroy();
	if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") ~= nil) then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy();
	end
end});
Tab2:AddButton({Name="Anti VFX",Callback=function()
	if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener") then
		game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener").Parent = game.ReplicatedStorage;
	else
		game.ReplicatedStorage.VFXListener.Parent = game.Players.LocalPlayer.PlayerScripts;
	end
end});
Tab2:AddToggle({Name="Anti Ring",Default=false,Callback=function(Value)
	_G.AntiRing = Value;
	while _G.AntiRing do
		if game.Workspace:FindFirstChild("Ring") then
			game.Workspace:FindFirstChild("Ring"):Destroy();
		end
		task.wait();
	end
end});
Tab2:AddToggle({Name="Auto Remove Big Meteors",Default=false,Callback=function(Value)
	_G.AutoRemoveBigMeteors = Value;
	while _G.AutoRemoveBigMeteors do
		if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
			game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy();
		end
		task.wait();
	end
end});
Tab2:AddToggle({Name="Auto Remove Small Meteors",Default=false,Callback=function(Value)
	_G.AutoRemoveSmallMeteors = Value;
	while _G.AutoRemoveSmallMeteors do
		if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
			game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy();
		end
		task.wait();
	end
end});
Tab2:AddToggle({Name="Anti Void Damage",Default=false,Callback=function(Value)
	game.Workspace['VoidPart'].CanCollide = Value;
	if (Value == true) then
		game.Workspace['VoidPart'].Transparency = 0.5;
	else
		game.Workspace['VoidPart'].Transparency = 1;
	end
end});
Tab2:AddToggle({Name="Anti Ragdoll",Default=false,Callback=function(Value)
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
