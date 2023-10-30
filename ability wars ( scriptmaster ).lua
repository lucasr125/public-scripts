if not game:IsLoaded() then
	game.Loaded:Wait();
end

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();

local Window = OrionLib:MakeWindow({Name=GameName,HidePremium=false,SaveConfig=false});

local HomeTab = Window:MakeTab({Name="Home",Icon="rbxassetid://7539983773",PremiumOnly=false});
local MAIN_TAB = Window:MakeTab({Name="Main",Icon="rbxassetid://7539983773",PremiumOnly=false});
local MISC_TAB = Window:MakeTab({Name="Misc",Icon="rbxassetid://484211948",PremiumOnly=false});
local BADGES_TAB = Window:MakeTab({Name="Badges",Icon="rbxassetid://206410289",PremiumOnly=false});
local SECRETS_TAB = Window:MakeTab({Name="Secrets",Icon="rbxassetid://4633508356",PremiumOnly=false});

getgenv().aurareach = 20;

local SafeSpot = Instance.new("Part", workspace);
SafeSpot.Position = Vector3.new(math.random(-25000, -2500), 100, math.random(-25000, -2500));
SafeSpot.Name = "Spot";
SafeSpot.Size = Vector3.new(500, 50, 500);
SafeSpot.Anchored = true;
SafeSpot.Transparency = 0.5;

local ANTI_VOID = Instance.new("Part");
ANTI_VOID.Parent = workspace;
ANTI_VOID.Anchored = true;
ANTI_VOID.Transparency = 1;
ANTI_VOID.Position = Vector3.new(63, 15, -9);
ANTI_VOID.Size = Vector3.new(2048, 1, 2048);
ANTI_VOID.CanCollide = false;

HomeTab:AddButton({Name="Infinite Yield",Callback=function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex"))();
end});
HomeTab:AddButton({Name="Rejoin Server",Callback=function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer);
end});
HomeTab:AddButton({Name="Destroy GUI",Callback=function()
	OrionLib:Destroy();
end});
MAIN_TAB:AddToggle({Name="Punch-Aura",Default=false,Callback=function(bool)
	getgenv().saura = bool;
	while getgenv().saura do
		task.wait(0.4);
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			if ((v.Character["Right Arm"]:FindFirstChild("SelectionBox") == nil) and (v ~= game.Players.LocalPlayer)) then
				local target = v.Character.HumanoidRootPart;
				local mag = (target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
				if (getgenv().aurareach > mag) then
					local args = {[1]=workspace:WaitForChild(target.Parent.Name),[2]=Vector3.new(target.Position),[3]=1.8757749795913696,[4]=game:GetService("Players"):WaitForChild(target.Parent.Name).Character:FindFirstChild("Head")};
					game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Punch"):FireServer(unpack(args));
				end
			end
		end
	end
end});
MAIN_TAB:AddSlider({Name="Punch-Aura Reach",Min=5,Max=20,Default=20,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="REACH",Callback=function(val)
	getgenv().aurareach = val;
end});
MAIN_TAB:AddToggle({Name="Anti-Void",Default=false,Callback=function(bool)
	ANTI_VOID.CanCollide = bool;
end});
MAIN_TAB:AddToggle({Name="Anti Kick",Default=false,Callback=function(Value)
	AntiKick = Value;
	while AntiKick do
		for i, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
			if (v.Name == "ErrorPrompt") then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer);
			end
		end
		task.wait();
	end
end});
MAIN_TAB:AddToggle({Name="Anti Card",Default=false,Callback=function(Value)
	AntiCard = Value;
	while AntiCard do
		for i, v in pairs(game.Workspace:GetChildren()) do
			if ((v.ClassName == "Part") and v:FindFirstChild("TouchInterest") and v:FindFirstChild("Decal")) then
				v.CanTouch = false;
			end
		end
		task.wait();
	end
end});
MAIN_TAB:AddToggle({Name="Anti Barrier",Default=false,Callback=function(Value)
	AntiBarrier = Value;
	while AntiBarrier do
		for i, v in pairs(game.Workspace:GetChildren()) do
			if ((v.Name == "Barrier Wall") and v:FindFirstChild("TouchInterest")) then
				v.CanTouch = false;
				v.CanCollide = false;
			end
		end
		task.wait();
	end
end});
MAIN_TAB:AddToggle({Name="Anti Soap",Default=false,Callback=function(Value)
	AntiSoap = Value;
	while AntiSoap do
		for i, v in pairs(game.Workspace:GetChildren()) do
			if ((v.Name == "Soap") and v:FindFirstChild("TouchInterest")) then
				v.CanTouch = false;
				v.CanCollide = false;
			end
		end
		task.wait();
	end
end});
MAIN_TAB:AddSlider({Name="Walkspeed",Min=20,Max=500,Default=20,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="WS",Callback=function(val)
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = val;
end});
MAIN_TAB:AddSlider({Name="Jumppower",Min=50,Max=500,Default=20,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="JP",Callback=function(val)
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = val;
end});
MAIN_TAB:AddSlider({Name="Hitbox (0 for normal)",Min=0,Max=20,Default=0,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Hitbox",Callback=function(val)
	if (val ~= 0) then
		game.Players.LocalPlayer.Character:WaitForChild("Hitbox").Size = Vector3.new(val, val, val);
		game.Players.LocalPlayer.Character:WaitForChild("Hitbox").Transparency = 0.6;
	else
		game.Players.LocalPlayer.Character:WaitForChild("Hitbox").Size = Vector3.new(1, 2, 1);
		game.Players.LocalPlayer.Character:WaitForChild("Hitbox").Transparency = 0;
	end
end});
local function boss()
	if game.Workspace:FindFirstChild("Dog") then
		return "Dog";
	elseif game.Workspace:FindFirstChild("Cat") then
		return "Cat";
	elseif game.Workspace:FindFirstChild("Tree Lord") then
		return "Tree Lord";
	elseif game.Workspace:FindFirstChild("Mushroom King") then
		return "Mushroom King";
	elseif game.Workspace:FindFirstChild("Scarecrow") then
		return "Scarecrow";
	else
		return "none";
	end
end
MISC_TAB:AddToggle({Name="Auto-Kill Bosses",Default=false,Callback=function(bool)
	getgenv().autokillboss = bool;
	while (getgenv().autokillboss == true) and (boss() ~= "none") do
		local punch = boss();
		task.wait(0.1);
		local args = {[1]=workspace:WaitForChild(punch),[2]=Vector3.new(workspace:WaitForChild(punch):WaitForChild("Right Leg").Position),[3]=1.8757749795913696,[4]=workspace:WaitForChild(punch):WaitForChild("Right Leg")};
		game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Punch"):FireServer(unpack(args));
	end
end});
MISC_TAB:AddToggle({Name="Destroy Nametag",Default=false,Callback=function(bool)
	getgenv().nametag = bool;
	while getgenv().nametag do
		task.wait();
		pcall(function()
			game.Players.LocalPlayer.Character.Head["Name Tag"]:Destroy();
		end);
	end
end});
MISC_TAB:AddToggle({Name="Anti Cauldron",Default=false,Callback=function(bool)
	workspace.Main.Shop.Attic.Alchemy["Alchemist Cauldron"]["Character Kill"].CanTouch = not bool;
end});
MISC_TAB:AddButton({Name="TP to Safe spot",Callback=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 50, 0);
end});
BADGES_TAB:AddButton({Name="Get Boing",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("BigMushroomEvent"):FireServer();
end});
local cake = true;
BADGES_TAB:AddButton({Name="Get Cake",Callback=function()
	if (cake == true) then
		cake = false;
		local cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160, 271, 29);
		task.wait(0.1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe;
		cake = true;
	end
end});
local ascend = true;
BADGES_TAB:AddButton({Name="Get Ascend",Callback=function()
	if (ascend == true) then
		if (game.Players.LocalPlayer.leaderstats.Ability.Value == "Lemon") then
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 240) then
				ascend = false;
				game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilityEvent"):FireServer(1);
				task.wait(0.5);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147, 19, 148);
				ascend = true;
			else
				OrionLib:MakeNotification({Name="Enter Arena",Content="You need to enter the arena for this to work.",Image="rbxassetid://4483345998",Time=3});
			end
		else
			OrionLib:MakeNotification({Name="Lemon Ability Required",Content="You need lemon for this to work.",Image="rbxassetid://4483345998",Time=3});
		end
	end
end});
MISC_TAB:AddButton({Name="Get Portal Mastery (Use in arena) (Resets character)",Callback=function()
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace["Portal Facility"].Rift.Portal.Front.TouchInterest.Parent, 0);
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace["Portal Facility"].Rift.Portal.Front.TouchInterest.Parent, 1);
end});
MISC_TAB:AddTextbox({Name="Equip Ability (Only use in lobby)",Default="Ability Name",TextDisappear=true,Callback=function(Value)
	fireclickdetector(workspace["Start Abilities"][Value].ClickDetector);
end});
MISC_TAB:AddButton({Name="Get 150 punches from quests (Needs at least 250 punches)",Callback=function()
	Location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").RequestQuestEvent:InvokeServer("Buy an Item from the Wood Shack");
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").BuyItem:FireServer("Gain Kick");
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").RequestQuestEvent:InvokeServer("Find The Backrooms");
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122, 21, -119);
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Location;
end});
local shopping = true;
BADGES_TAB:AddButton({Name="Get Grocery Shopping",Callback=function()
	if (shopping == true) then
		shopping = false;
		local cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160, 271, 29);
		task.wait(0.1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-101, 23, -97);
		task.wait(0.1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150, -21, 150);
		task.wait(0.1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe;
		shopping = true;
	end
end});
BADGES_TAB:AddButton({Name="Get Backrooms",Callback=function()
	if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 240) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-121, 19, -119);
	else
		OrionLib:MakeNotification({Name="Enter Arena",Content="You need to enter the arena for this to work.",Image="rbxassetid://4483345998",Time=5});
	end
end});
BADGES_TAB:AddButton({Name="Get Alchemist badge (Needs 750p and cake) (Use priv server)",Callback=function()
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilitySelect:FireServer("Soap");
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 110);
	wait(0.25);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilityEvent:FireServer(1);
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").Respawn:FireServer();
	wait(3.75);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilitySelect:FireServer("Cake");
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 110);
	wait(0.25);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilityEvent:FireServer(1);
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").Respawn:FireServer();
	wait(3.75);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilitySelect:FireServer("Glue");
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 110);
	wait(0.25);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilityEvent:FireServer(1);
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 106);
end});
BADGES_TAB:AddButton({Name="Get Gelatinous badge (Needs 1450p) (Use priv server)",Callback=function()
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace["Map Items"].Gel.TouchInterest.Parent, 0);
	firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace["Map Items"].Gel.TouchInterest.Parent, 1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.5, 34, 110);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").Respawn:FireServer();
	wait(3.75);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilitySelect:FireServer("Slime");
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 110);
	wait(0.25);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilityEvent:FireServer(1);
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").Respawn:FireServer();
	wait(3.75);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").AbilitySelect:FireServer("Mushroom");
	wait(0.1);
	game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").ActivateStarted:FireServer("Normal");
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 110);
	wait(0.1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25, 35, 106);
end});
SECRETS_TAB:AddButton({Name="Equip Jester (1500 PUNCHES)",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Jester");
end});
SECRETS_TAB:AddButton({Name="Equip Spectator",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Spectator");
end});
SECRETS_TAB:AddButton({Name="Equip Cheese",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Cheese");
end});
SECRETS_TAB:AddButton({Name="Equip Burger (6000 PUNCHES)",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Burger");
end});
SECRETS_TAB:AddButton({Name="Equip Seat",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Seat");
end});
SECRETS_TAB:AddButton({Name="Equip Kick (MUST CLICK IN ARENA)",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("BuyItem"):FireServer("Gain Kick");
end});
SECRETS_TAB:AddButton({Name="Equip Butter (5000 PUNCHES)",Callback=function()
	game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Butter");
end});
game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if (msg == "dev mode") then
		local DEV_MODE = Window:MakeTab({Name="Developer Mode",Icon="rbxassetid://11860859170",PremiumOnly=false});
		OrionLib:MakeNotification({Name="Developer Mode",Content="Developer Mode has been unlocked",Image="rbxassetid://1202200114",Time=5});
		DEV_MODE:AddButton({Name="Print CFrame",Callback=function()
			print(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
		end});
		DEV_MODE:AddToggle({Name="ban-risk punch aura",Default=false,Callback=function(bool)
			getgenv().aura = bool;
			while getgenv().aura do
				task.wait(0.001);
				for i, v in pairs(game:GetService("Players"):GetChildren()) do
					if ((v.Character["Right Arm"]:FindFirstChild("SelectionBox") == nil) and (v ~= game.Players.LocalPlayer)) then
						local target = v.Character.HumanoidRootPart;
						local mag = (target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
						if (getgenv().aurareach > mag) then
							local args = {[1]=workspace:WaitForChild(target.Parent.Name),[2]=Vector3.new(target.Position),[3]=1.8757749795913696,[4]=game:GetService("Players"):WaitForChild(target.Parent.Name).Character:FindFirstChild("Head")};
							game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Punch"):FireServer(unpack(args));
						end
					end
				end
			end
		end});
		DEV_MODE:AddColorpicker({Name="Hitbox Color",Default=Color3.fromRGB(255, 255, 255),Callback=function(Value)
			game.Players.LocalPlayer.Character:WaitForChild("Hitbox").Color = Value;
		end});
		DEV_MODE:AddToggle({Name="ESP",Default=false,Callback=function(bool)
			print("wip");
		end});
		DEV_MODE:AddButton({Name="Equip Jester (1500 PUNCHES)",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Jester");
		end});
		DEV_MODE:AddButton({Name="Equip Spectator",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Spectator");
		end});
		DEV_MODE:AddButton({Name="Equip Cheese",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Cheese");
		end});
		DEV_MODE:AddButton({Name="Equip Burger (6000 PUNCHES)",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Burger");
		end});
		DEV_MODE:AddButton({Name="Equip Seat",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Seat");
		end});
		DEV_MODE:AddButton({Name="Equip Kick (MUST CLICK IN ARENA)",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("BuyItem"):FireServer("Gain Kick");
		end});
		DEV_MODE:AddButton({Name="Equip Butter (5000 PUNCHES)",Callback=function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("AbilitySelect"):FireServer("Butter");
		end});
	end
end);
