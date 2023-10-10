getgenv().settings = {WalkSpeed=16,AutoWalkspeed=false,JumpPower=50,AutoJumpPower=false,HipHeight=0,AutoHipHeight=false,Gravity=196.2,AutoGravity=false};
local LocalPlayer = game.Players.LocalPlayer;
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/lucasr125/bracket-lib-v3.3/main/bracketv3.3.lua"))();
local Window = Bracket:Window({Name=GameName,Enabled=true,Color=Color3.new(1, 0.5, 0.25),Size=UDim2.new(0, 296, 0, 296),Position=UDim2.new(0.5, -248, 0.5, -248)});
do
	local HomeTab = Window:Tab({Name="Home"});
	do
		local HomeSection = HomeTab:Section({Name="User Commands",Side="Right"});
		do
			local ServerHop = HomeSection:Button({Name="Server Hop",Side="Left",Callback=function()
				httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
				if httprequest then
					local servers = {};
					local req = httprequest({Url=string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)});
					local body = game.HttpService:JSONDecode(req.Body);
					if (body and body.data) then
						for i, v in next, body.data do
							if ((type(v) == "table") and tonumber(v.playing) and tonumber(v.maxPlayers) and (v.playing < v.maxPlayers) and (v.id ~= game.JobId)) then
								table.insert(servers, 1, v.id);
							end
						end
					end
					if (#servers > 0) then
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer);
					else
						return Bracket:Notification({Title="Error",Description="Couldn't find a server!",Duration=10});
					end
				end
			end});
			local RemoteSpy = HomeSection:Button({Name="Hydroxide",Side="Left",Callback=function()
				local owner = "Upbolt";
				local branch = "revision";
				local function webImport(file)
					return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. ".lua")();
				end
				webImport("init");
				webImport("ui/main");
			end});
			local InfYield = HomeSection:Button({Name="Infinite Yield",Side="Left",Callback=function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
			end});
			local Rejoin = HomeSection:Button({Name="Rejoin",Side="Left",Callback=function()
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer);
			end});
		end
		local LocalFuncs = HomeTab:Section({Name="Local Functions",Side="Left"});
		do
			local WalkspeedValue = LocalFuncs:Slider({Name="Walkspeed Value",Flag="WalkspeedValue",Side="Left",Min=20,Max=1000,Value=getgenv().settings.WalkSpeed,Precise=0,Unit="",Callback=function(Value_Number)
				getgenv().settings.Walkspeed = Value_Number;
				LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().settings.Walkspeed;
			end});
			local AutomaticWalkspeed = LocalFuncs:Toggle({Name="Automatic Set Walkspeed",Flag="AutomaticWalkspeed",Side="Left",Value=false,Callback=function(Toggle_Bool)
				getgenv().settings.AutoWalkspeed = Toggle_Bool;
				if (getgenv().settings.AutoWalkspeed == true) then
					while getgenv().settings.AutoWalkspeed do
						task.wait();
						local Character = workspace:WaitForChild(LocalPlayer.Name);
						if ((Character:FindFirstChild("Humanoid") ~= nil) and (Character.Humanoid.WalkSpeed ~= getgenv().settings.Walkspeed)) then
							Character:FindFirstChild("Humanoid").WalkSpeed = getgenv().settings.Walkspeed;
						end
					end
				end
			end});
			local JumpPowerValue = LocalFuncs:Slider({Name="JumpPower Value",Flag="JumpPowerValue",Side="Left",Min=50,Max=1000,Value=getgenv().settings.JumpPower,Precise=0,Unit="",Callback=function(Value_Number)
				getgenv().settings.JumpPower = Value_Number;
				LocalPlayer.Character.Humanoid.JumpPower = getgenv().settings.JumpPower;
			end});
			local AutomaticJumpPower = LocalFuncs:Toggle({Name="Automatic Set JumpPower",Flag="AutomaticJumpPower",Side="Left",Value=false,Callback=function(Toggle_Bool)
				getgenv().settings.AutoJumpPower = Toggle_Bool;
				if (getgenv().settings.AutoJumpPower == true) then
					while getgenv().settings.AutoJumpPower do
						task.wait();
						local Character = workspace:WaitForChild(LocalPlayer.Name);
						if ((Character:FindFirstChild("Humanoid") ~= nil) and (Character.Humanoid.JumpPower ~= getgenv().settings.JumpPower)) then
							Character:FindFirstChild("Humanoid").JumpPower = getgenv().settings.JumpPower;
						end
					end
				end
			end});
			local HipHeightValue = LocalFuncs:Slider({Name="HipHeight Value",Flag="HipHeightValue",Side="Left",Min=0,Max=100,Value=getgenv().settings.HipHeight,Precise=0,Unit="",Callback=function(Value_Number)
				getgenv().settings.HipHeight = Value_Number;
				LocalPlayer.Character.Humanoid.HipHeight = getgenv().settings.HipHeight;
			end});
			local AutomaticHipHeight = LocalFuncs:Toggle({Name="Automatic Set HipHeight",Flag="AutomaticHipHeight",Side="Left",Value=false,Callback=function(Toggle_Bool)
				getgenv().settings.AutoHipHeight = Toggle_Bool;
				if (getgenv().settings.AutoHipHeight == true) then
					while getgenv().settings.AutoHipHeight do
						task.wait();
						local Character = workspace:WaitForChild(LocalPlayer.Name);
						if ((Character:FindFirstChild("Humanoid") ~= nil) and (Character.Humanoid.HipHeight ~= getgenv().settings.HipHeight)) then
							Character:FindFirstChild("Humanoid").HipHeight = getgenv().settings.HipHeight;
						end
					end
				end
			end});
			local GravityValue = LocalFuncs:Slider({Name="Gravity Value",Flag="GravityValue",Side="Left",Min=0,Max=1000,Value=getgenv().settings.Gravity,Precise=2,Unit="",Callback=function(Value_Number)
				getgenv().settings.Gravity = Value_Number;
				game.Workspace.Gravity = getgenv().settings.Gravity;
			end});
			local AutomaticGravity = LocalFuncs:Toggle({Name="Automatic Set Gravity",Flag="AutomaticGravity",Side="Left",Value=false,Callback=function(Toggle_Bool)
				getgenv().settings.AutoGravity = Toggle_Bool;
				if (getgenv().settings.AutoGravity == true) then
					while getgenv().settings.AutoGravity do
						task.wait();
						game.Workspace.Gravity = getgenv().settings.Gravity;
					end
				end
			end});
		end
	end
	local Tab = Window:Tab({Name="Main"});
	do
		local Section = Tab:Section({Name="Auto Farm",Side="Left"});
		do
			local AutofarmSpeed = Section:Slider({Name="Autofarm Speed",Flag="Autofarm Speed",Side="Left",Min=0,Max=1,Value=0,Precise=2,Unit="",Callback=function(Value_Number)
				farmspeed = Value_Number;
			end});
			AutofarmSpeed:ToolTip("Change your farm speed value.");
			local AutoFarmStages = Section:Toggle({Name="AutoFarm Stages",Flag="AutoFarm Stages",Side="Left",Value=false,Callback=function(Toggle_Bool)
				_G.AutoStages = Toggle_Bool;
				while _G.AutoStages do
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(farmspeed);
					game:GetService("ReplicatedStorage").SetLevel:FireServer(0);
					wait(0.1);
					game:GetService("ReplicatedStorage").SetLevel:FireServer(0);
					wait(0.1);
					game:GetService("ReplicatedStorage").SetLevel:FireServer(0);
					wait(0.1);
				end
			end});
			AutoFarmStages:Keybind({Flag="Toggle/Keybind",Value="NONE",DoNotClear=false,Mouse=false,Callback=function(Key_String, Pressed_Bool, Toggle_Bool)
				_G.AutoStages = Toggle_Bool;
			end,Blacklist={"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}});
			local AutofarmStars = Section:Button({Name="Autofarm Stars",Side="Left",Callback=function()
				for i = 0, 30, 1 do
					game:GetService("ReplicatedStorage").GotStar:FireServer("Level " .. game:GetService("Players").LocalPlayer.Level.Value .. "");
					wait(0.25);
					game:GetService("ReplicatedStorage").BeatLevel:FireServer(0.1, "Level 1", "Normal", false);
					wait(0.25);
				end
			end});
			AutofarmStars:ToolTip("Get the stars from the levels for you.");
			local AutogetStars = Section:Toggle({Name="AutoGet Stars",Flag="AutoGet Stars",Side="Left",Value=false,Callback=function(Toggle_Bool)
				_G.AutoGetStars = Toggle_Bool;
				while _G.AutoGetStars do
					task.wait();
					game:GetService("ReplicatedStorage").GotStar:FireServer("Level " .. game:GetService("Players").LocalPlayer.Level.Value .. "");
				end
			end});
			AutogetStars:Keybind({Flag="Toggle/Keybind",Value="NONE",DoNotClear=false,Mouse=false,Callback=function(Key_String, Pressed_Bool, Toggle_Bool)
				_G.AutoGetStars = Toggle_Bool;
			end,Blacklist={"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"}});
			AutogetStars:ToolTip("Get the stars from the levels for you.");
			local RetardZombie = Section:Button({Name="Retardify Zombies",Side="Left",Callback=function()
				game:GetService("Players").LocalPlayer.PlayerScripts.ZombieScripts:Destroy();
			end});
		end
		local Section2 = Tab:Section({Name="Weapons",Side="Right"});
		do
			local Cloud = Section2:Button({Name="Get Cloud",Side="Left",Callback=function()
				local CloudCopy = game:GetService("ReplicatedStorage").Cloud:Clone();
				CloudCopy.Parent = game:GetService("Players").LocalPlayer.Backpack;
			end});
			local ADMCloud = Section2:Button({Name="Get Administrator Cloud",Side="Left",Callback=function()
				local AdmCloudCopy = game:GetService("ReplicatedStorage").AdminCloud:Clone();
				AdmCloudCopy.Parent = game:GetService("Players").LocalPlayer.Backpack;
			end});
			local SpeedCoil = Section2:Button({Name="Get Speed Coil",Side="Left",Callback=function()
				local SpeedCoilCopy = game:GetService("ReplicatedStorage")["Speed Coil"]:Clone();
				SpeedCoilCopy.Parent = game:GetService("Players").LocalPlayer.Backpack;
			end});
			local GravCoil = Section2:Button({Name="Get Gravity Coil",Side="Left",Callback=function()
				local GravCoilCopy = game:GetService("ReplicatedStorage").GravityCoilv2:Clone();
				GravCoilCopy.Parent = game:GetService("Players").LocalPlayer.Backpack;
			end});
		end
		local Section3 = Tab:Section({Name="Others",Side="Right"});
		do
			local SpeedRunReloaded = Section3:Button({Name="Speed Run Reloaded",Side="Left",Callback=function()
				game:GetService("TeleportService"):Teleport(244532931, LocalPlayer);
			end});
			local SpeedRunRetro = Section3:Button({Name="Speed Run 4 (Retro Level Pack)",Side="Left",Callback=function()
				game:GetService("TeleportService"):Teleport(190590056, LocalPlayer);
			end});
			local ClickTP = Section3:Button({Name="Click Tp Tool",Side="Left",Callback=function()
				mouse = game.Players.LocalPlayer:GetMouse();
				tool = Instance.new("Tool");
				tool.RequiresHandle = false;
				tool.Name = "Click Teleport";
				tool.Activated:connect(function()
					local pos = mouse.Hit + Vector3.new(0, 2.5, 0);
					pos = CFrame.new(pos.X, pos.Y, pos.Z);
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos;
				end);
				tool.Parent = game.Players.LocalPlayer.Backpack;
			end});
		end
	end
end
