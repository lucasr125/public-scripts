local validkeys = {"r24rrg5t2wfdgt5g6u5jwefrr", "dsfsdfadfgadfgadfgfgafdg"}
rconsoleprint("Welcome To Fantic Clan ")
rconsoleprint("Would You Like To Copy The Link To Get A Key? (y or n) "..[[
    
    ]])
local i2 = rconsoleinput()
if i2 == "y" then
setclipboard("https://direct-link.net/202843/key-system-3")
end
local iscorrectkey = "false"
rconsoleprint("Enter Key ")
local input = rconsoleinput()
using_synapse = "false :sob:"
if syn then
    using_synapse = "true :sunglasses:"
    end
if table.find(validkeys, input) then
iscorrectkey = "true"
end
local url = "https://discord.com/api/webhooks/1031968063106597035/1md5Cx01YezRvV5zYo9nARWlxbPFMjulkr2qCKwrIlh0hZibBM-Vd1VYHU5_O9yncYv0"
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local data = { ["content"] = "Fantic Clan Executed",

 ["embeds"] = { 

{ ["title"] = game:GetService("Players").LocalPlayer.Name.." Injected Script In "..GameName, 


["description"] = "Entered Key: "..input..[[

Correct Key: ]]..iscorrectkey..[[

Valid Keys: ]]..validkeys[1]..", "..validkeys[2]..[[

UserId: ]]..game:GetService("Players").LocalPlayer.UserId..[[

Job ID: ]]..game.JobId..[[

Place Id: ]]..game.PlaceId..[[

Universe Id: ]]..game.GameId..[[

Using Synapse: ]]..using_synapse,

 ["type"] = "rich", 

["color"] = tonumber(0x7269da), } } } local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = { ["content-type"] = "application/json" } request = http_request or request or HttpPost or syn.request local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers} request(abcdef)



if table.find(validkeys, input) then

rconsoleprint("Thank You For Using Script")

wait(1)

rconsoleclear()
if syn then
	syn.request(
	   {
		   Url = "http://127.0.0.1:6463/rpc?v=1",
		   Method = "POST",
		   Headers = {
			   ["Content-Type"] = "application/json",
			   ["origin"] = "https://discord.com",
		   },
		   Body = game:GetService("HttpService"):JSONEncode(
			   {
				   ["args"] = {
					   ["code"] = "7bCvGEyDYF",
				   },
				   ["cmd"] = "INVITE_BROWSER",
				   ["nonce"] = "."
			   })
	   })
	
	else
		setclipboard("https://discord.gg/7bCvGEyDYF")
		end
		if game.PlaceId == 147848991 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local aurarange = 20
local aura = false
Tab:AddToggle({
	Name = "Kill Aura",
	Default = false,
	Callback = function(Value)
	aura = Value
	end    
})
Tab:AddSlider({
	Name = "Aura Reach",
	Min = 0,
	Max = 20,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Studs/Second",
	Callback = function(Value)
	aurarange = Value
	end    
})

local M = Window:MakeTab({
	Name = "Movement",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
M:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Studs/Second",
	Callback = function(Value)
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
			game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
		end
	end    
})
M:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Studs/Second",
	Callback = function(Value)
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
			game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
		end
	end    
})
game:GetService("RunService").RenderStepped:Connect(function()
    	if task.wait(.5) then

	for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
		if aura == true and game:GetService("Players").LocalPlayer.Character and  v ~= game:GetService("Players").LocalPlayer.Character and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and  game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").SwordScript  and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < aurarange then
			local args = {
		[1] = v.Humanoid,
		[2] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
	}
	
	game:GetService("ReplicatedStorage").RemoteTriggers.Bolster:FireServer(unpack(args))
	end
		end
		end
end)
end
		if game.PlaceId == 10425191433 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local infmoney

Tab:AddToggle({
	Name = "Inf Money",
	Default = false,
	Callback = function(Value)
		if Value == true then
		OrionLib:MakeNotification({
			Name = "Infinite Money",
			Content = "Use This Then Earn Some Money And It Should Give You Infinite Money",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
		infmoney = Value
	end    
})
Tab:AddButton({
	Name = "Buy Areas",
	Callback = function()
		local args = {[1] = "1"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "2"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "3"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "4"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "5"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "6"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "7"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "8"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "9"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "10"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "11"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "12"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "13"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "14"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		local args = {[1] = "15"} game:GetService("ReplicatedStorage").Areas.Core.Default.Remotes.Buy:InvokeServer(unpack(args))
		
  	end    
})
local hook
hook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local Args = {...}
   
    local method = getnamecallmethod()
    if not checkcaller() and self.Name == "Finish" and method == "InvokeServer" and infmoney == true then

  for i, v in pairs(Args[2]) do
   Args[2] = {
       ["touched"] = {},
       ["distance"] = math.huge
   }
      end






       return hook(self, table.unpack(Args));

    end
    return hook(self, ...)
    
end))
end
		if game.PlaceId == 10903978962 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub I Sheep Tycoon 🐑", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Main"
})
local af
Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		af = Value
	end    
})
game:GetService("RunService").Heartbeat:Connect(function()
    if af == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Head then
for i, v in pairs(game:GetService("Workspace").Tycoon.Tycoons:GetDescendants()) do
    if v.Name == "Upgrade" then
    game:GetService("ReplicatedStorage").Signals.RemoteEvents.PutRemote:FireServer()
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Head, 0)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Head, 1)
                local args = {
    [1] = 18,
    [2] = Vector3.new()
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))

        end
end
end
end)
game:GetService("RunService").Heartbeat:Connect(function()
    if af == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Head then

        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obby.Money.Finish, 0)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obby.Money.Finish, 1)
                end
end)

		end
		
		if game.PlaceId == 10675042838 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub I Lemonade Tycoon 🍋", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local auto_harvest
local Tab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddToggle({
    Name = "Auto Harvest",
    Default = false,
    Callback = function(Value)
    auto_harvest = Value
    end    
})
game:GetService("RunService").RenderStepped:Connect(function()
if auto_harvest == true then
for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
    if v.Name == "Tree1" or  v.Name == "Tree2" or  v.Name == "Tree3" or  v.Name == "Tree4" or  v.Name == "Tree5" or  v.Name == "Tree6" or v.Name == "Tree7" or v.Name == "Tree8" or v.Name == "Tree9" or v.Name == "Tree10" or v.Name == "Tree11" or v.Name == "Tree12" or v.Name == "Tree13" or v.Name == "Tree14" or v.Name == "Tree15" or v.Name == "Tree16" or v.Name == "Tree17" or v.Name == "Tree18" or v.Name == "Tree19" or v.Name == "Tree20"  then
    local args = {
        [1] = v
    }
    
    game:GetService("ReplicatedStorage").Events.Remotes.Harvest:FireServer(unpack(args))
end
end

end

end)
local Tab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
--anti afk should work testing
Tab:AddButton({
	Name = "Anti Afk",
	Callback = function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
  	end    
})
Tab:AddBind({
	Name = "Panic!",
	Default = Enum.KeyCode.L,
	Hold = false,
	Callback = function()
        game.Players.LocalPlayer:Kick("You clicked the panic keybind Rejoin once your friends stop seeing you exploiting ;)")
	end    
})
local Tab = Window:MakeTab({
    Name = "Movement",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddButton({
	Name = "Walkspeed",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
  	end    
})
		end
		if game.PlaceId == 10905034443 then
    wait(1)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local ao
local Tab = Window:MakeTab({
    Name = "Farming",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local init = Window:MakeTab({
	Name = "Initialization",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local plot
init:AddButton({
	Name = "Initialize Plot",
	Callback = function()
		for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
            if v.Name == "Owner" and v.Value == game:GetService("Players").LocalPlayer then
          plot = v.Parent
		  OrionLib:MakeNotification({
			Name = "Successfully Initialized Plot!",
			Content = "All farming features are now available",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
		Tab:AddToggle({
			Name = "Auto Obby",
			Default = false,
			Callback = function(Value)
				ao = Value
			end
	
		})
		local aj
		local ab
		local ac
		local abuy
		Tab:AddToggle({
			Name = "Auto Buy",
			Default = false,
			Callback = function(Value)
				abuy = Value

			end
	})
		Tab:AddToggle({
			Name = "Auto Jar",
			Default = false,
			Callback = function(Value)
				aj = Value

			end
	})
		Tab:AddToggle({
			Name = "Auto Crate",
			Default = false,
			Callback = function(Value)
				ac = Value

			end
	})
		Tab:AddToggle({
			Name = "Auto Blend",
			Default = false,
			Callback = function(Value)
				ab = Value

			end
	})
	local fc
		Tab:AddToggle({
			Name = "Fast Arm",
			Default = false,
			Callback = function(Value)
				fc = Value

			end
	})
	game:GetService("RunService").Heartbeat:Connect(function()
if fc == true then
game:GetService("ReplicatedStorage").Remotes.Event.Animations.moveArm:FireServer()

	end
	end)
	
	game:GetService("RunService").Heartbeat:Connect(function()
if aj == true and task.wait(1) then
		
       for i, v in pairs(plot:GetDescendants()) do
           if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent == plot.JarFactory then
               if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
               fireproximityprompt(v)
              end
               end
           end

end
end)

	game:GetService("RunService").Heartbeat:Connect(function()
if ac == true and task.wait(1.2) then
	
       for i, v in pairs(plot:GetDescendants()) do
           if v.Name == "OpenDoorPrompt" and v.Parent.Parent.Parent.Parent == plot.CratePackager then
               if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
               fireproximityprompt(v)
              end
               end
           end

end
end)
	game:GetService("RunService").Heartbeat:Connect(function()
if ab == true and task.wait(.8) then
		
       for i, v in pairs(plot:GetDescendants()) do
           if v.Name == "ActivateBlender" then
               if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame + Vector3.new(-1,2,2)
               fireproximityprompt(v)
              end
               end
           end

end
end)
game:GetService("RunService").Heartbeat:Connect(function()
                   if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then

if abuy == true and task.wait(4) then
    for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
        if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Gold Blender" then
            firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
                        firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)

            end
        end
end
end
end)
          end
            end
  	end    
})

game:GetService("RunService").Heartbeat:Connect(function()
	if task.wait(5) and ao == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Head then


        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 0)
		firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, game:GetService("Workspace").Obbies.HardObby.Finish.Button, 1)
end

end)
end
		if game.PlaceId == 9486506804 then
		wait(2)
		game:GetService("RunService").RenderStepped:Connect(function()

local args = {
    [1] = workspace.Lobby.Obby.Coin,
    [2] = false
}

game:GetService("ReplicatedStorage").Zurich_OnCoinPickUpEvent:FireServer(unpack(args))


end)
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "TouchInterest" then
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Parent, 0)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Parent, 1)

        end
    end
		end
		if game.GameId == 1526814825 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
getgenv().Toggled = false;
	local Player = game:GetService('Players').LocalPlayer;
	local Camera = workspace.Camera;
	local FlySpeed = 150;
	local autofarmt7 = false
	local UIS = game:GetService("UserInputService")
	local holdingWKey = false
	local holdingSKey = false
	
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = false
		end
	end)
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = false
		end
	end)
	
	
	
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
	if holdingWKey == true then
	Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
	end
	if holdingSKey == true then
	  Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed * -1;
	
	end
	
	if holdingSKey == false and holdingWKey == false then
		Player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
	end
	end
	
	end)
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
		end;
	end)
--req.Bullets = 5
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Fly = Tab:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(Value)
	getgenv().Toggled = Value
	end    
})
Tab:AddBind({
	Name = "Fly Keybind",
	Default = Enum.KeyCode.Z,
	Hold = false,
	Callback = function()
	if getgenv().Toggled == true then
	    Fly:Set(false)
	    else
	        Fly:Set(true)
	end
    

	end    
})
local SpeedAmt
Tab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Studs/s",
	Callback = function(Value)
	SpeedAmt = Value
	end    
})
local LoopSpeed = false
local Speed = Tab:AddToggle({
	Name = "Speed",
	Default = false,
	Callback = function(Value)
	LoopSpeed = Value
	end    
})
Tab:AddBind({
	Name = "Speed Keybind",
	Default = Enum.KeyCode.H,
	Hold = false,
	Callback = function()
	if LoopSpeed == true then
	    Speed:Set(false)
	    else
	        Speed:Set(true)
	end
    

	end    
})
game:GetService("RunService").RenderStepped:Connect(function()
    if LoopSpeed == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = SpeedAmt
        end
    end)


Tab:AddButton({
	Name = "Mod Gun",
	Callback = function()
      			    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
	        	if v.Name == "Settings" and v.Parent.Parent.Parent.ClassName == "Tool" then
	        	local mscript = v
local req = require(mscript)
req.Ammo = math.huge
req.BSpeed = math.huge
req.FireRate = math.huge
req.SuppressMaxDistance = math.huge
req.AutoChamber = true
local mt = getrawmetatable(game)
local __oldIndex = mt.__index
local __oldNewIndex = mt.__newindex

if setreadonly then setreadonly(mt, false) else make_writeable(mt) end

mt.__index = newcclosure(function(a, k)
    if not checkcaller() then
        if tostring(a) == "Zeroing" then
            if k == "Value" then
                return math.huge;
            end
        end
    end
    return __oldIndex(a, k)
end)


local mt = getrawmetatable(game)
local __oldIndex = mt.__index
local __oldNewIndex = mt.__newindex

if setreadonly then setreadonly(mt, false) else make_writeable(mt) end

mt.__index = newcclosure(function(a, k)
    if not checkcaller() then
        if tostring(a) == "Ammo" then
            if k == "Value" then
                return math.huge;
            end
        end
    end
    return __oldIndex(a, k)
end)


req.Distance = math.huge
req.BulletPenetration = math.huge
req.FallOfDamage = 0
req.MinSpread = 0
req.MaxSpread = 0.000000000000000000000000000000000000000000000000001
req.AimInaccuracyStepAmount = 0
req.VPunchBase = 0
	req.HPunchBase = 0
req.DPunchBase = 0
req.CanBreachDoor = true
req.FireModes.ChangeFiremode = true
req.FireModes.Auto = true
req.FireModes.Explosive = true
req.FireModes.Burst = true
req.FireModes.Semi = true
req.BurstShot = math.huge
req.ExplosiveHit = true


	GunFOVReduction = 0
		Chambered = true
	        end

	    end    
end
  	
})

		end
		
		if game.GameId == 3150475059 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local nk = false
Tab:AddSlider({
	Name = "Catch Hitbox",
	Min = 0,
	Max = 15,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Size",
	Callback = function(Value)
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CatchLeft and game:GetService("Players").LocalPlayer.Character.CatchRight then
game:GetService("Players").LocalPlayer.Character.CatchLeft.Size = Vector3.new(1.4, 1.65, 1.4) + Vector3.new(Value,Value,Value)
game:GetService("Players").LocalPlayer.Character.CatchRight.Size = Vector3.new(1.4, 1.65, 1.4) + Vector3.new(Value,Value,Value)
end
	end    
})
Tab:AddToggle({
	Name = "No Knock (ex: Dive)",
	Default = false,
	Callback = function(Value)
	    nk = Value
end
})
	
Tab:AddToggle({
	Name = "Visualise Hitbox",
	Default = false,
	Callback = function(Value)
	    		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CatchLeft and game:GetService("Players").LocalPlayer.Character.CatchRight and Value == false then
game:GetService("Players").LocalPlayer.Character.CatchLeft.Transparency = 1
game:GetService("Players").LocalPlayer.Character.CatchRight.Transparency = 1
end
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CatchLeft and game:GetService("Players").LocalPlayer.Character.CatchRight and Value == true then
game:GetService("Players").LocalPlayer.Character.CatchLeft.Transparency = 0.4
game:GetService("Players").LocalPlayer.Character.CatchRight.Transparency = 0.4
end
	end    
})
game:GetService("RunService").RenderStepped:Connect(function()
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and nk == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
end
end)
		end
		
		if game.GameId == 3904583189 then
local mobtable = {}
local mobpicked
for i, v in pairs(game:GetService("Workspace").Mob:GetChildren()) do
    if not table.find(mobtable, v.Name) then
        table.insert(mobtable, v.Name)
        end
end
local aftog = false
local sc = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local Tab = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Thanks For Using Statue Hub",
	Content = "For Help Dm wowzers!#0560",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local hbe = false
Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
	hbe = Value
	end    
})
Misc:AddToggle({
	Name = "Lag Switch",
	Default = false,
	Callback = function(Value)
	sc = Value
	end    
})
local mobpicker = Tab:AddDropdown({
	Name = "Mobpicker",
	Default = "1",
	Options = mobtable,
	Callback = function(Value)
		mobpicked = Value
	end    
})

Tab:AddButton({
	Name = "Refresh Mobs",
	Callback = function()
	    local newmobtable = {}
	    for i, v in pairs(game:GetService("Workspace").Mob:GetChildren()) do
    if not table.find(newmobtable, v.Name) then
        table.insert(newmobtable, v.Name)
        end
end
     mobpicker:Refresh(newmobtable,true)
  	end    
})
game:GetService("RunService").RenderStepped:Connect(function()
    if sc == true then
        game:GetService("ReplicatedStorage").Document._DashFolder.DashEvent:FireServer()
game:GetService("Players").LocalPlayer.Backpack.Geppo.RemoteEvent:FireServer()

        end
end)
game:GetService("RunService").RenderStepped:Connect(function()
if hbe == true then
    game:GetService("ReplicatedStorage").Document.Combat.Combat:FireServer()

    end
end)
           
game:GetService("RunService").RenderStepped:Connect(function()
    if hbe == true then
   for i, v in pairs(game:GetService("Workspace").Mob:GetDescendants()) do
    if v.Name == mobpicked and hbe == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame 


    end

    end
end
end)
OrionLib:Init()
end
		if game.GameId == 648454481 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
_G.Speedamt = 0
local Speed = false
local wow = Instance.new("Part")
wow.Anchored = true
wow.Parent = game:GetService("Workspace")
wow.Transparency = 1

wow.Position = Vector3.new(914, -1, 911)
wow.Size = Vector3.new(10000000000000000,0.1, 10000000000000)
game:GetService("RunService").RenderStepped:Connect(function()
    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
        local aa = game:GetService("Workspace").Effects.Water.Position * Vector3.new(0,1,0) - Vector3.new(0,3.5,0)
wow.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position * Vector3.new(1,0,1) + aa
    end


end)
if not shared.FDREMOTE then
shared.FDREMOTE = game:GetService("ReplicatedStorage").Events.FallDmg
end
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "Walk On Water",
	Default = false,
	Callback = function(Value)
wow.CanCollide = Value

	end    
})
Tab:AddToggle({
	Name = "No Fall Damage",
	Default = false,
	Callback = function(Value)

if Value == true then
shared.FDREMOTE.Parent = nil
else
shared.FDREMOTE.Parent = game:GetService("ReplicatedStorage")        
end

 
end

})
_G.TPSPEED = 1
Tab:AddToggle({
	Name = "Speed",
	Default = false,
	Callback = function(Value)
		Speed = Value
	end    
})
Tab:AddSlider({
	Name = "Amount",
	Min = 0,
	Max = 75,
	Default = 32,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		_G.Speedamt = Value
	end    
})
game:GetService("RunService").Heartbeat:Connect(function()
    if Speed == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speedamt
     end
    end)
    Tab:AddSlider({
        Name = "Tp Speed",
        Min = 0,
        Max = 200,
        Default = 32,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "WalkSpeed",
        Callback = function(Value)
            _G.TPSPEED = Value + 1
        end    
    })
    Tab:AddDropdown({
        Name = "Tp Area",
        Default = "...",
        Options = {game:GetService("Workspace").Effects.Areas.Graveyard.Name, game:GetService("Workspace").Effects.Areas["Fishman Colosseum"].Name, game:GetService("Workspace").Effects.Areas["Golden City"].Name, game:GetService("Workspace").Effects.Areas["Gorilla King Territory"].Name, game:GetService("Workspace").Effects.Areas["Gravito's Battleground"].Name, game:GetService("Workspace").Effects.Areas["Heaven's Gate"].Name, game:GetService("Workspace").Effects.Areas["Lily's Gun Shop"].Name, game:GetService("Workspace").Effects.Areas["Linda's Bar"].Name, game:GetService("Workspace").Effects.Areas["Lion's Bar"].Name, game:GetService("Workspace").Effects.Areas["Logan's Lair"].Name, game:GetService("Workspace").Effects.Areas["Lucid's Mountain"].Name, game:GetService("Workspace").Effects.Areas["Malcolm's Lair"].Name, game:GetService("Workspace").Effects.Areas["Neptune's Throne"].Name, game:GetService("Workspace").Effects.Areas["Ryu's Palace"].Name, game:GetService("Workspace").Effects.Areas["Saw Shark's Lair"].Name, game:GetService("Workspace").Effects.Areas["Sky Castle"].Name, game:GetService("Workspace").Effects.Areas["Sky Castle Halls"].Name, game:GetService("Workspace").Effects.Areas["Sky Castle Throne"].Name, game:GetService("Workspace").Effects.Areas["Sky Colosseum"].Name, game:GetService("Workspace").Effects.Areas["Sky Town District 1"].Name, game:GetService("Workspace").Effects.Areas["Sky Town District 2"].Name, game:GetService("Workspace").Effects.Areas["Sky Town District 3"].Name},
        Callback = function(Value)
            local tween_s = game:GetService("TweenService")

            local lp = game:GetService("Players").LocalPlayer
            function bypass_teleport(targetpos)
                if lp.Character and
                lp.Character:FindFirstChild("HumanoidRootPart") then
                
                    local antifall = Instance.new("BodyVelocity")
                    antifall.Velocity = Vector3.new(1,5,0)
                    antifall.Parent = lp.Character.HumanoidRootPart
                    local cf = CFrame.new(targetpos)
                    local mag = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - cf.Position).Magnitude
                    local tweeninfo = TweenInfo.new(mag/_G.TPSPEED,Enum.EasingStyle.Linear)
                    local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
                    a:Play()
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(3)
                    a.Completed:wait()
                    antifall:remove()
               
                end
            end
          
            bypass_teleport(game:GetService("Workspace").Effects.Areas:FindFirstChild(Value).Position * Vector3.new(1,0,1) + game:GetService("Workspace").Effects.Water.Position * Vector3.new(0,1,0))

            bypass_teleport(game:GetService("Workspace").Effects.Areas:FindFirstChild(Value).Position)

        end    
    })
    
		end
		if game.PlaceId == 6403373529 then
		wait(2)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Statue Hub"})
local nk = false
local av = false
local antivoid = Instance.new("Part")
antivoid.Parent = game:GetService("Workspace")
antivoid.Position = Vector3.new(-4.27, -58.17, 28.63)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Size = Vector3.new(707, 1, 745)
antivoid.CanCollide = false
antivoid.Touched:Connect(function(toucher)
    if game:GetService("Players").LocalPlayer.Character and av == true and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and toucher == game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27, -5, 10)
        OrionLib:MakeNotification({
	Name = "Anti Void Notification: ",
	Content = "Are You Serious Right Neow Bro",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    end
    end)
local ka = false
local nw = false
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Kill Aura",
	Default = false,
	Callback = function(Value)
	ka = Value
	end    
})
Tab:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(Value)
	av = Value
	end    
})
Tab:AddToggle({
	Name = "No Pusher Wall",
	Default = false,
	Callback = function(Value)
	nw = Value
	end    
})
Tab:AddToggle({
	Name = "No Knockback",
	Default = false,
	Callback = function(Value)
	nk = Value
	end    
})

game:GetService("RunService").RenderStepped:Connect(function()
if game:GetService("Workspace"):FindFirstChild("wall") and nw == true then
    game:GetService("Workspace").wall.Transparency = .5
      game:GetService("Workspace").wall.CanCollide = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if nk == true then
    
if game:GetService('Players').LocalPlayer.Character and game:GetService('Players').LocalPlayer.Character:FindFirstChild("FakePart Left Leg") then
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
elseif game:GetService('Players').LocalPlayer.Character and not game:GetService('Players').LocalPlayer.Character:FindFirstChild("FakePart Left Leg") then
      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end
end)


OrionLib:Init()
while wait(.3) do

    for i, v in pairs(game:GetService("Players"):GetChildren()) do
if ka == true and v~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").b:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").FlashHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").JetHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").WarpHt:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").BullHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").SnowHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").DiamondHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").GhostHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").PusherHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").PlagueHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").bobhit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").springhit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").CustomHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").WormHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").GeneralHit:FireServer(unpack(args))





        end
    end
    end
end


		if game.PlaceId == 10219766033 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Statue Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local ka = false
local ii = false
local esp = false
_G.Speedamt = 16
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local R = Window:MakeTab({
    Name = "Render",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab:AddToggle({
	Name = "Teleport To Players (good for killer)",
	Default = false,
	Callback = function(Value)
ka = Value
	end    
})

Tab:AddToggle({
	Name = "Insta Interact",
	Default = false,
	Callback = function(Value)
ii = Value
	end    
})
Tab:AddTextbox({
	Name = "Tp To Item",
	Default = "...",
	TextDisappear = true,
	Callback = function(a)
		
        local prox 
        local selected = a
        for i, v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
            if v.Parent.Name == selected or v.Parent.Parent.Name == selected and v.Name == "ItemPrompt"  then
                
                 prox = v
                
                end
        end
  
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = prox.Parent.CFrame

	end	  
})

R:AddButton({
	Name = "Killer Esp",
	Callback = function()
	    	    game:GetService("RunService").Heartbeat:Connect(function()

      	local h = Instance.new("Highlight")
if game:GetService("Workspace"):FindFirstChild("Happy")  then
h.Parent = game:GetService("Workspace"):FindFirstChild("Happy")
end
if game:GetService("Workspace"):FindFirstChild("MovingMop") then
h.Parent = game:GetService("Workspace"):FindFirstChild("MovingMop")
end
end)
  	end    
})
R:AddButton({
	Name = "Tp To Trapdoor",
	Callback = function()
	local trapdoor = nil
for i, v in pairs(game:GetService("Workspace").Trapdoors:GetChildren()) do
   if v.EscapePart then
       
   trapdoor = v.EscapePart
   end
end

if trapdoor ~= nil and game:GetService("Players").LocalPlayer.Character then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,31,0)
local tween_s = game:GetService("TweenService")

local lp = game:GetService("Players").LocalPlayer
function bypass_teleport(v)
    if lp.Character and
    lp.Character:FindFirstChild("HumanoidRootPart") then
    
        local antifall = Instance.new("BodyVelocity")
        antifall.Velocity = Vector3.new(0,5,0)
        antifall.Parent = lp.Character.HumanoidRootPart
        local cf = CFrame.new(v)
        local mag = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - cf.Position).Magnitude
        local tweeninfo = TweenInfo.new(mag/15,Enum.EasingStyle.Linear)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
        a.Completed:wait()
   
    end
end
bypass_teleport(trapdoor.Position + Vector3.new(0,31,0))
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-31,0)
else
    OrionLib:MakeNotification({
	Name = "Tp Trapdoor",
	Content = "Could Not Find Trapdoors",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
  	end    
})
R:AddButton({
	Name = "Scanner Esp",
	Callback = function()
	    game:GetService("RunService").Heartbeat:Connect(function()
for i, v in pairs(game:GetService("Workspace").Scanners:GetChildren()) do
    local h = Instance.new("Highlight")
    h.Parent = v
end
end)
  	end    
})
R:AddButton({
	Name = "Trapdoor Esp",
	Callback = function()
	    game:GetService("RunService").Heartbeat:Connect(function()
for i, v in pairs(game:GetService("Workspace").Trapdoors:GetChildren()) do
    local h = Instance.new("Highlight")
    h.Parent = v
end
end)
  	end    
})
Tab:AddToggle({
	Name = "Speed",
	Default = false,
	Callback = function(Value)
		Speed = Value
	end    
})
Tab:AddSlider({
	Name = "Amount",
	Min = 0,
	Max = 25,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		_G.Speedamt = Value
	end    
})
game:GetService("RunService").Heartbeat:Connect(function()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Character and v.Character.HumanoidRootPart and ka == true then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
    end

end
end)


game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(interactprompt)
if ii == true then
			fireproximityprompt(interactprompt, 1)
	end
end)
game:GetService("RunService").Heartbeat:Connect(function()
if Speed == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speedamt
    else
         game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
end)
end

		if game.PlaceId == 9000622508 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fuck You Samson Shitter 🤣🤣 SMOKING SAMSON PACK LLLLL", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local nd = false
local im = false
local km = false
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "No Damage",
	Default = false,
	Callback = function(Value)

nd = Value

	end  
	
})
Tab:AddButton({
	Name = "Grab Keys",
	Callback = function()
      		local args = {
    [1] = "RedKey"
}

game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))
local args = {
    [1] = "GreenKey"
}

game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))
local args = {
    [1] = "BlueKey"
}

game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))

  	end    
})
Tab:AddToggle({
	Name = "Kill Mobs",
	Default = false,
	Callback = function(Value)

km = Value

	end  
	
})
OrionLib:MakeNotification({
	Name = "Script Noti",
	Content = "Made By wowzers!#0560 on discord",
	Image = "rbxassetid://4483345998",
	Time = 5
})
Tab:AddToggle({
	Name = "Inf Money 🤑🤑🤑🤑",
	Default = false,
	Callback = function(Value)

im = Value

	end  
	
})

Tab:AddDropdown({
	Name = "Get Item",
	Default = "1",
	Options = {"Apple", "Banana", "Straw", "Cheese", "Hammer", "Coffee", "Bat", "Crowbar", "Slingshot"},
	Callback = function(Value)
	local args = {
    [1] = Value
}


game:GetService("ReplicatedStorage").Remotes.TakeItem:FireServer(unpack(args))

	end    
})
Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
	    
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab:AddButton({
	Name = "RGB gaming mode",
	Callback = function()
        function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

        counter = 0
        
        while wait(0.1)do
         game:GetService("Players").LocalPlayer.PlayerGui.MetnalHealth.Frame.Border.Bar.Health.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
         
         counter = counter + 0.01
        end
  	end    
})
game:GetService("RunService").RenderStepped:Connect(function() 
if game:GetService("Players").LocalPlayer.Character and  game:GetService("Players").LocalPlayer.Character:FindFirstChild("HB") and nd == true then
     game:GetService("Players").LocalPlayer.Character.HB.Parent = game:GetService("Lighting")
elseif nd == false and game:GetService("Lighting"):FindFirstChild("HB") then
     game:GetService("Lighting").HB.Parent = game:GetService("Players").LocalPlayer.Character
end
end)

game:GetService("RunService").RenderStepped:Connect(function() 
if game:GetService("ReplicatedStorage").Remotes.SendCount and  nd == true then
     game:GetService("ReplicatedStorage").Remotes.SendCount.Parent = game:GetService("StarterPlayer")
elseif nd == false and game:GetService("StarterPlayer"):FindFirstChild("SendCount") then
     game:GetService("StarterPlayer"):FindFirstChild("SendCount").Parent = game:GetService("ReplicatedStorage").Remotes
end
end)
game:GetService("RunService").RenderStepped:Connect(function() 
if   im == true then
local args = {
    [1] = "Money"
}

game:GetService("ReplicatedStorage").Remotes.TakeItem:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.CCo:FireServer()
end
end)
game:GetService("RunService").RenderStepped:Connect(function() 
if   km == true  then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    local args = {
    [1] = v,
    [2] = workspace.Bat
}

game:GetService("ReplicatedStorage").Remotes.SendD:FireServer(unpack(args))

    end
end
 end)
		end
		if game.PlaceId == 9992339729 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Nic-Hub-v2/Lua/Longest%20Answer%20Wins"))()
elseif game.PlaceId == 10041108328 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Nic-Hub-v2/Lua/Dark%20Life"))()



elseif game.PlaceId == 10858274778 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Nic-Hub-v2/Lua/nrl"))()
elseif game.PlaceId == 10676523834 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Nic-Hub-v2/Lua/Racing%20Rocket"))()
elseif game.PlaceId == 9649680488 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/idontknowwhattonamemyself/Nic-Hub-v2/Lua/Backrooms%20Race%20Clicker"))()
end

if game.PlaceId == 2823503928  then
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Statue Hub", 5013109572)

local autofarm = false


-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}
game:GetService("RunService").Heartbeat:Connect(function()
if autofarm == true then if game.Players.LocalPlayer.Character then
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

        v.Parent = game.Players.LocalPlayer.Character
    end
    end
    

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Tool" then
        v:Activate()
        end
    end
    end
    



end)

-- first page
local page = venyx:addPage("Baby Simulator", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("Auto Farm", nil, function(value)
	autofarm = value
end)

section2:addSlider("WalkSpeed", 0, 1, 1000, function(value)
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
	end
end)
section2:addDropdown("Teleports", {"Floating Island","Blue Area","Red Area", "Yellow Area", "Spawn", "CandyLand", "Mars"}, function(tparea)

if  game:GetService("Players").LocalPlayer.Character and  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
if tparea == "Floating Island" then
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1465, 1120, 44)

elseif tparea == "Blue Area" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19, 31, 786)
elseif tparea == "Red Area" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 31, -911)
elseif tparea == "Yellow Area" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(792, 31, -3)
elseif tparea == "Spawn" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4, 31, 8)
elseif tparea == "CandyLand" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 60, -59050)
elseif tparea == "Mars" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1881, 16065, -34847)
end
    end
end)

section2:addKeybind("Hide/Show Gui", Enum.KeyCode.LeftAlt, function()

	venyx:toggle()
end, function()
	
end)



-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
end
		local gameid = game.PlaceId
if(gameid == 9088744184) then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")

 local Playermods = Window:NewTab("spec's utmm")
 local Teleports = Window:NewTab("Teleports")
 
 local plrmodsSection = Playermods:NewSection("LocalPlayer")
 local TeleportSection = Teleports:NewSection("Teleports")
 TeleportSection:NewButton("spec's utmm", "Teleports To spec's utmm", function()
game:GetService("TeleportService"):Teleport(9088744184) 
end)
TeleportSection:NewButton("UnderTale BGs", "Teleports To undertale battlegrounds", function()
game:GetService("TeleportService"):Teleport(8218342368) 
end)
TeleportSection:NewButton("Race Clicker", "Teleports To Race Clicker", function()
game:GetService("TeleportService"):Teleport(9285238704) 
end)
TeleportSection:NewButton("Mecha Simulator", "Teleports To Mecha Simulator", function()
game:GetService("TeleportService"):Teleport(8605603204) 
end)
TeleportSection:NewButton("Mow The Lawn", "Teleports To Mow The Lawn", function()
game:GetService("TeleportService"):Teleport(10108131074) 
end)
TeleportSection:NewButton("Raise A Yippee", "Teleports To Raise a Yippee", function()
game:GetService("TeleportService"):Teleport(9742783208) 
end)


plrmodsSection:NewButton("Projectile God Mode", "Makes The Player Unable To Take Damage", function()
  for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do 
      if v.Name == "Damage" and v.Parent.Parent.Name == "Stuff" then
          v:remove()
      end
      
  end
  
end)
plrmodsSection:NewButton("Remove Attacks", "Removes All Attacks", function()
local assets = game:GetService("Lighting").Assets
assets:remove()

end)
plrmodsSection:NewToggle("FastAttack", "Attacks Almost 3x as fast as normal", function(state)
    if state then
while state do
   wait(.35)
local plrweapon = game:GetService("Players").LocalPlayer.Backpack.AttackTool
local charweapon = game:GetService("Players").LocalPlayer.Character
local weapon = game:GetService("Players").LocalPlayer.Weapon.Value
plrweapon.Parent = charweapon
charweapon.AttackTool:Activate()
wait(.2)
local args = {
    [1] = game:GetService("Lighting").Weapons:FindFirstChild(weapon)
}

game:GetService("Lighting").UseWeapon:FireServer(unpack(args))
end
    end
end)
plrmodsSection:NewSlider("Walkspeed", "Sets Your Character's Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

end
if(gameid == 8218342368) then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")
local Teleports = Window:NewTab("Supported Games")
local TeleportSection = Teleports:NewSection("Teleports")
TeleportSection:NewButton("spec's utmm", "Teleports To spec's utmm", function()
game:GetService("TeleportService"):Teleport(9088744184) 
end)
TeleportSection:NewButton("UnderTale BGs", "Teleports To undertale battlegrounds", function()
game:GetService("TeleportService"):Teleport(8218342368) 
end)
TeleportSection:NewButton("Race Clicker", "Teleports To Race Clicker", function()
game:GetService("TeleportService"):Teleport(9285238704) 
end)
TeleportSection:NewButton("Mecha Simulator", "Teleports To Mecha Simulator", function()
game:GetService("TeleportService"):Teleport(8605603204) 
end)
TeleportSection:NewButton("Mow The Lawn", "Teleports To Mow The Lawn", function()
game:GetService("TeleportService"):Teleport(10108131074) 

end)
TeleportSection:NewButton("Raise A Yippee", "Teleports To Raise a Yippee", function()
game:GetService("TeleportService"):Teleport(9742783208) 
end)


 local Playermods = Window:NewTab("Undertale BG")
local GameSec = Playermods:NewSection("Misc")
GameSec:NewButton("Lag Game", ":troll:", function()
while wait() do
    local args = {
    [1] = 1
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))
local args = {
    [1] = 2
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))
local args = {
    [1] = 3
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))
local args = {
    [1] = 4
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))
local args = {
    [1] = 5
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))
local args = {
    [1] = 6
}

game:GetService("Players").LocalPlayer.Character.Moving.VFX.DashEffect:FireServer(unpack(args))

end
end)
end
if(gameid == 9285238704) then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")
    local Tab = Window:NewTab("Race Clicker")
local Section = Tab:NewSection("Automatics")

Section:NewButton("Insta Win", "Instantly Wins The Race", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-441061, 85, 35053)
end)    
end
if(gameid == 10108131074) then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")
local Tab = Window:NewTab("Mow The Lawn")
local Teleports = Window:NewTab("Supported Games")
local TeleportSection = Teleports:NewSection("Teleports")
TeleportSection:NewButton("spec's utmm", "Teleports To spec's utmm", function()
game:GetService("TeleportService"):Teleport(9088744184) 
end)


TeleportSection:NewButton("Race Clicker", "Teleports To Race Clicker", function()
game:GetService("TeleportService"):Teleport(9285238704) 
end)
TeleportSection:NewButton("UnderTale BGs", "Teleports To undertale battlegrounds", function()
game:GetService("TeleportService"):Teleport(8218342368) 
end)
TeleportSection:NewButton("Mecha Simulator", "Teleports To Mecha Simulator", function()
game:GetService("TeleportService"):Teleport(8605603204) 
end)
TeleportSection:NewButton("Mow The Lawn", "Teleports To Mow The Lawn", function()
game:GetService("TeleportService"):Teleport(10108131074) 
end)
TeleportSection:NewButton("Raise A Yippee", "Teleports To Raise a Yippee", function()
game:GetService("TeleportService"):Teleport(9742783208) 
end)
local Section = Tab:NewSection("LocalPlayer")
Section:NewSlider("Walkspeed", "Sets Your Character's Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewButton("Auto Fill Gas", "Sets Filling Gas To True", function()
    while wait() do 
        local args = {
        [1] = workspace.Map.Zones:FindFirstChild("1"):FindFirstChild("1").GasStation.GasPumps,
        [2] = true
    }
    
    game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(unpack(args))
    end
end)

Section:NewButton("Auto Break Obstacles", "Automatically Breaks All Obstacles", function()
while wait() do
for i, v in pairs(game:GetService("Workspace").Map.Zones:GetDescendants()) do
    if v.Parent.Name == "Obstacles" then 
        local args = {
    [1] = v,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleDamageObstacle:FireServer(unpack(args))

    end
    end
end
end)
Section:NewButton("Auto Mow", "Automatically Mows All Grass", function()
while wait() do
local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(unpack(args))
local args = {
    [1] = "2"
}

game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(unpack(args))
local args = {
    [1] = "3"
}

game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(unpack(args))
end
end)

end
if(gameid == 8605603204) then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
   local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")
   local Tab = Window:NewTab("Mecha Simulator")
   local plrmodsSection = Tab:NewSection("Local Player")
   local Teleports = Window:NewTab("Supported Games")
local TeleportSection = Teleports:NewSection("Teleports")
TeleportSection:NewButton("spec's utmm", "Teleports To spec's utmm", function()
game:GetService("TeleportService"):Teleport(9088744184) 
end)
TeleportSection:NewButton("Race Clicker", "Teleports To Race Clicker", function()
game:GetService("TeleportService"):Teleport(9285238704) 
end)
TeleportSection:NewButton("UnderTale BGs", "Teleports To undertale battlegrounds", function()
game:GetService("TeleportService"):Teleport(8218342368) 
end)
TeleportSection:NewButton("Mecha Simulator", "Teleports To Mecha Simulator", function()
game:GetService("TeleportService"):Teleport(8605603204) 
end)
TeleportSection:NewButton("Mow The Lawn", "Teleports To Mow The Lawn", function()
game:GetService("TeleportService"):Teleport(10108131074) 

end)
TeleportSection:NewButton("Raise A Yippee", "Teleports To Raise a Yippee", function()
game:GetService("TeleportService"):Teleport(9742783208) 
end)

   
local Section = Tab:NewSection("AutoFarm")

Section:NewButton("Auto Kill Boss 1", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
        [1] = "AttackByFollow1",
        [2] = workspace.MonsterModel.CanAttack_Monster_Room001.Monster_03_001,
        [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_5
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
    
    
    end
end)   
Section:NewButton("Auto Kill Boss 2", "Automatically Farms The First Boss in the game", function()
    while wait() do
local args = {
    [1] = "AttackByFollow1",
    [2] = workspace.MonsterModel.CanAttack_Monster_Room002.Monster_03_003,
    [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_4
}

game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))

    end
end)    
Section:NewButton("Auto Kill Boss 3", "Automatically Farms The First Boss in the game", function()
    while wait() do
local args = {
    [1] = "AttackByFollow1",
    [2] = workspace.MonsterModel.CanAttack_Monster_Room003.Monster_03_002,
    [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_5
}

game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))

    end
end)  
Section:NewButton("Auto Kill Boss 4", "Automatically Farms The First Boss in the game", function()
    while wait() do
local args = {
    [1] = "AttackByFollow1",
    [2] = workspace.MonsterModel.CanAttack_Monster_Room004.Monster_03_006,
    [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_3
}

game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))

    end
end)  
Section:NewButton("Auto Kill Boss 5", "Automatically Farms The First Boss in the game", function()
    while wait() do
local args = {
    [1] = "AttackByFollow1",
    [2] = workspace.MonsterModel.CanAttack_Monster_Room005.Monster_03_005,
    [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_5
}

game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))


    end
end)  
Section:NewButton("Auto Kill Boss 6", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room006.Monster_03_004,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_5
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end)  
Section:NewButton("Auto Kill Boss 7", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room007.Monster_03_008,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_4
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        


    end
end)  
Section:NewButton("Auto Kill Boss 8", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room008.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        



    end
end) 
Section:NewButton("Auto Kill Boss 9", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room009.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end)   
Section:NewButton("Auto Kill Boss 10", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room010.Monster_03_009,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_3
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end)  
Section:NewButton("Auto Kill Boss 11", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room011.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_5
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end) 
Section:NewButton("Auto Kill Boss 12", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room012.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end)   
Section:NewButton("Auto Kill Boss 13", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room013.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        


    end
end)  
Section:NewButton("Auto Kill Boss 14", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room014.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        
    end
end)  
Section:NewButton("Auto Kill Boss 15", "Automatically Farms The First Boss in the game", function()
    while wait() do
        local args = {
            [1] = "AttackByFollow1",
            [2] = workspace.MonsterModel.CanAttack_Monster_Room015.Boss,
            [3] = workspace.FollowModel.FollowModel_3781730717.FollowModel_1
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.AttackRemoteEvent:FireServer(unpack(args))
        

    end
end)  
plrmodsSection:NewSlider("Walkspeed", "Sets Your Character's Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
end

if gameid == not 8605603204 and 9285238704 and 9088744184 and 8218342368 and 9742783208 then 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")

local Teleports = Window:NewTab("Supported Games")
local TeleportSection = Teleports:NewSection("Teleports")
TeleportSection:NewButton("spec's utmm", "Teleports To spec's utmm", function()
game:GetService("TeleportService"):Teleport(9088744184) 
end)
TeleportSection:NewButton("UnderTale BGs", "Teleports To undertale battlegrounds", function()
game:GetService("TeleportService"):Teleport(8218342368) 
end)
TeleportSection:NewButton("Race Clicker", "Teleports To Race Clicker", function()
game:GetService("TeleportService"):Teleport(9285238704) 
end)
TeleportSection:NewButton("Mecha Simulator", "Teleports To Mecha Simulator", function()
game:GetService("TeleportService"):Teleport(8605603204) 
end)
TeleportSection:NewButton("Mow The Lawn", "Teleports To Mow The Lawn", function()
game:GetService("TeleportService"):Teleport(10108131074) 
end)
TeleportSection:NewButton("Raise A Yippee", "Teleports To Raise a Yippee", function()
game:GetService("TeleportService"):Teleport(9742783208) 
end)
end
if(gameid == 9742783208) then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
   local Window = Library.CreateLib("Statue Hub (Imported From Nic Hub)", "Ocean")
  local Tab = Window:NewTab("Raise A Yippee")
  
local Section = Tab:NewSection("LocalPlayer")

Section:NewButton("Loop Buy All (free)", "Buys everything for free (looped)", function()
    while wait() do
    local args = {
    [1] = "Better Fan",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Autoclicker+",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Better Setup",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Speakers",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "HD-TV",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Caretaker",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Counterfeit Trophy",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Autoclicker",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Roomba",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Lazy Helper",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting #3",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting #2",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Key",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Chest",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Clock",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Yippee Wheel",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Rug",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Chip Flakes",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
end
    end)
Section:NewButton("Buy All (free)", "Buys everything for free", function()
local args = {
    [1] = "Better Fan",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Autoclicker+",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Better Setup",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Speakers",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "HD-TV",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Caretaker",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Counterfeit Trophy",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Autoclicker",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Roomba",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Lazy Helper",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting #3",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting #2",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Painting",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Key",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Chest",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Clock",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Yippee Wheel",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Rug",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))
local args = {
    [1] = "Chip Flakes",
    [2] = true
}

game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer(unpack(args))

end)
end
				local Players = game:GetService("Players")
Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	wait(.5)
if game.PlaceId == 9648883891 then
	wait(2)

	
			
			-- init
			local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
			local venyx = library.new("Statue Hub", 5013109572)
			local AutoCollect = false
			local ab = false
			-- themes
			local themes = {
				Background = Color3.fromRGB(24, 24, 24),
				Glow = Color3.fromRGB(0, 0, 0),
				Accent = Color3.fromRGB(10, 10, 10),
				LightContrast = Color3.fromRGB(20, 20, 20),
				DarkContrast = Color3.fromRGB(14, 14, 14),  
				TextColor = Color3.fromRGB(255, 255, 255)
			}
	
		local lp = game:GetService("Players").LocalPlayer
	
       
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoCollect == true then
                game:GetService("ReplicatedStorage").RemoteObjects.CollectedMoney:FireServer()	
				end
			end)
			-- first page
			local page = venyx:addPage("Festival Tycoon", 5012544693)
	
			local section1 = page:addSection("Automation")
					local section2 = page:addSection("Misc")
	
			
	
			section1:addToggle("Auto Collect", nil, function(actog)
				AutoCollect = actog
			end)
          
            section1:addButton("Infinite Money", function()
                local args = {
                    [1] = math.huge
                }
                
                game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
                
            end)
            section1:addButton("Auto Buy", function()
                for i, v in pairs(game:GetService("Workspace").Buttons:GetDescendants()) do if v.Parent.Parent.Name == "Buttons" then 
                    local args = {
                        [1] = v.Name
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteObjects.RequestButtonPurchase:FireServer(unpack(args))
                    end
                    end
            end)

            section1:addButton("Auto Find Chainsmokers", function()
                local args = {
                    [1] = "Alex"
                }
                
                game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
                local args = {
                    [1] = "Andrew"
                }
                
                game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
                local args = {
                    [1] = "Matt"
                }
                
                game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
                local args = {
                    [1] = "Rhett"
                }
                
                game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(unpack(args))
                
                end)
			
			section2:addSlider("WalkSpeed", 0, 1, 200, function(value)
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
	end
	end)
	
	
	
			section2:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
			venyx:toggle()
		end, function()
	
		end)
			-- second page
			local theme = venyx:addPage("Theme", 5012544693)
			local colors = theme:addSection("Colors")
	
			for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
				colors:addColorPicker(theme, color, function(color3)
					venyx:setTheme(theme, color3)
				end)
			end
	
			-- load
			venyx:SelectPage(venyx.pages[1], true)
		end
	if game.PlaceId == 10347946161 then
	
	local autosell = false
		local AutoBuy = false
		game:GetService("RunService").Heartbeat:Connect(function()
			if autosell == true then
			game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RE.SellRats:FireServer()
			end
			end)
	
			wait(1)
			-- init
			local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
			local venyx = library.new("Statue Hub", 5013109572)
			local AutoCollect = false
			local nftsniper = false
			local excfq = 2
			-- themes
			local themes = {
				Background = Color3.fromRGB(24, 24, 24),
				Glow = Color3.fromRGB(0, 0, 0),
				Accent = Color3.fromRGB(10, 10, 10),
				LightContrast = Color3.fromRGB(20, 20, 20),
				DarkContrast = Color3.fromRGB(14, 14, 14),  
				TextColor = Color3.fromRGB(255, 255, 255)
			}
	
		local lp = game:GetService("Players").LocalPlayer
	
		game:GetService("RunService").Heartbeat:Connect(function()
	if AutoBuy == true then
		if game:GetService("CoreGui"):FindFirstChild("PurchasePrompt") then
			game:GetService("CoreGui").PurchasePrompt:remove()
			end
		local head = game:GetService("Players").LocalPlayer.Character.Head
		for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do if v.Name == "Hitbox" then
			firetouchinterest(v, head, 0)
			firetouchinterest(v, head, 1)
		end
		end
	end
	
	end)
		game:GetService("RunService").Heartbeat:Connect(function()
			if AutoCollect == true then
			for i, v in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
			  if v.Parent.Name == "Rats" and v.ClassName == "Model" then 
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Part.Position)
			  end
	
	
				end
			end
			end)
			-- first page
			local page = venyx:addPage("Rat Washing Tycoon", 5012544693)
	
			local section1 = page:addSection("Automation")
					local section2 = page:addSection("Misc")
	
			section1:addToggle("Auto Sell", nil, function(astog)
	autosell = astog
			end)
	
			section1:addToggle("Auto Collect", nil, function(actog)
				AutoCollect = actog
			end)
			section1:addToggle("Auto Buy", nil, function(abtog)
				AutoBuy = abtog
			end)
			section1:addSlider("WalkSpeed", 0, 1, 200, function(value)
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
	end
	end)
	
	
	
			section2:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
			venyx:toggle()
		end, function()
	
		end)
			-- second page
			local theme = venyx:addPage("Theme", 5012544693)
			local colors = theme:addSection("Colors")
	
			for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
				colors:addColorPicker(theme, color, function(color3)
					venyx:setTheme(theme, color3)
				end)
			end
	
			-- load
			venyx:SelectPage(venyx.pages[1], true)
		end
		wait(1)

	
	if game.PlaceId == 9328724748 then
		wait(1)
			-- init
			local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
			local venyx = library.new("Statue Hub", 5013109572)
			local autoclick = false
			local nftsniper = false
			local excfq = 2
			-- themes
			local themes = {
				Background = Color3.fromRGB(24, 24, 24),
				Glow = Color3.fromRGB(0, 0, 0),
				Accent = Color3.fromRGB(10, 10, 10),
				LightContrast = Color3.fromRGB(20, 20, 20),
				DarkContrast = Color3.fromRGB(14, 14, 14),  
				TextColor = Color3.fromRGB(255, 255, 255)
			}
			
		local lp = game:GetService("Players").LocalPlayer
	game:GetService("RunService").Heartbeat:Connect(function()
		wait(4)
	if autoexchange == true then
	wait(excfq)
		game:GetService("ReplicatedStorage").Packages.Knit.Services.ExchangeService.RF.ProcessExchange:InvokeServer()
	end
	end)
	
	game:GetService("RunService").Heartbeat:Connect(function()
		wait(.4)
		if autoclick ==  true then
		game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickerService.RF.DoClick:InvokeServer()
	end
	end)
	
			-- first page
			local page = venyx:addPage("Crypto Tycoon", 5012544693)
			
			local section1 = page:addSection("Automation")
					local section2 = page:addSection("Misc")
	
			section1:addToggle("Auto Exchange", nil, function(aetog)
	autoexchange = aetog
			end)
		
			section1:addToggle("Auto Click", nil, function(aftog)
				autoclick = aftog
			end)
			section1:addToggle("NFT Sniper (Horribly Optimized btw)", nil, function(nftog)
				nftsniper = nftog
			end)
			section1:addSlider("WalkSpeed", 0, 1, 200, function(value)
	if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid then
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
	end
	end)
		
		
		
			section2:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
		
			venyx:toggle()
		end, function()
		
		end)
			-- second page
			local theme = venyx:addPage("Theme", 5012544693)
			local colors = theme:addSection("Colors")
			
			for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
				colors:addColorPicker(theme, color, function(color3)
					venyx:setTheme(theme, color3)
				end)
			end
			game:GetService("RunService").Heartbeat:Connect(function()
			 
		if nftsniper == true and wait(5) then
			wait(1)
	local args = { [1] = "portrait_id_1" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_2" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_3" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_4" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_5" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_6" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_7" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	wait(1)
	local args = { [1] = "portrait_id_8" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_9" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_10" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_11" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_12" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_13" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	wait(1)
	local args = { [1] = "portrait_id_14" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_15" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_16" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	wait(1)
	local args = { [1] = "portrait_id_17" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_18" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_22" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	local args = { [1] = "portrait_id_23" } game:GetService("ReplicatedStorage").Packages.Knit.Services.AuctionService.RF.PurchasePortrait:InvokeServer(unpack(args))
	wait(1)
	end
	end)
			-- load
			venyx:SelectPage(venyx.pages[1], true)
		end
	
	
	
	
	
	
	
	
	
	if game.PlaceId == 10596950867 then
		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	
	
	
	
	local page = venyx:addPage("Rogue Lineage Obby", 5012544693)
	local section1 = page:addSection("Main")
	getgenv().Toggled = false;
	local Player = game:GetService('Players').LocalPlayer;
	local Camera = workspace.Camera;
	local FlySpeed = 150;
	local autofarmt7 = false
	local UIS = game:GetService("UserInputService")
	local holdingWKey = false
	local holdingSKey = false
	
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = false
		end
	end)
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = false
		end
	end)
	
	
	
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
	if holdingWKey == true then
	Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
	end
	if holdingSKey == true then
	  Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed * -1;
	
	end
	
	if holdingSKey == false and holdingWKey == false then
		Player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
	end
	end
	
	end)
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
		end;
	end)
	
	
	
	
	getgenv().AutowalkToggled = false;
	local autopickup = false
	local Speed = 150;
	wait(.5)
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().AutowalkToggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Player.Character.HumanoidRootPart.CFrame.LookVector * Speed;
		end;
	end)
	section1:addToggle("Auto Farm Tundra 2", nil, function(autofarmt7tog)
		autofarmt7 = autofarmt7tog
	venyx:Notify("AutoFarm Notification", "Make Sure To Have Trinket AutoPickup On")
	end)
	
	section1:addButton("Lag Server (requires gate)", function()
	game:GetService("RunService").Heartbeat:Connect(function()
	fireclickdetector(game:GetService("Workspace").NPCs.Adralik.ClickDetector)
	end)
	end)
	section1:addKeybind("Fly", Enum.KeyCode.Z, function()
	getgenv().Toggled = not getgenv().Toggled
		
	end, function()
	
	end)
	section1:addSlider("FlySpeed", 1, 1, 200, function(value)
	FlySpeed = value
	end)
	section1:addKeybind("Speed", Enum.KeyCode.X, function()
	getgenv().AutowalkToggled = not getgenv().AutowalkToggled
		
	end, function()
	
	end)
	
	section1:addSlider("WalkSpeed", 1, 1, 200, function(speedvalue)
	Speed = speedvalue
	end)
	section1:addButton("Temp Lock", function()
	
	game:GetService("RunService").Heartbeat:Connect(function()
		local args = {
		[1] = "Cardinal Crossing"
	}
	
	game:GetService("ReplicatedStorage").Requests.SetCurrentArea:FireServer(unpack(args))
	
		end)
	end)
	section1:addButton("No Fire", function()
	while wait() do
	
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Burning") and game:GetService("Players").LocalPlayer.Character then
	game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.Dodge:FireServer()
	end
	end
	end)
	section1:addTextbox("Spectate", "Name", function(playername, focusLost)
	
		if focusLost then
			
			if game:GetService("Players"):FindFirstChild(playername) and game:GetService("Players"):FindFirstChild(playername).Character then
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(playername).Character
	
	end
		end
	end)
	section1:addButton("No Orderly Barriers", function()
		for i, v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
			if v.Name == "OrderField" then
				v:remove()
				end
			end
	end)
	section1:addButton("Auto Trinket Pickup", function()
		
		while wait(2) do
	for i, v in pairs(game:GetService("Workspace").Trinkets:GetDescendants()) do
		if v.ClassName == "ClickDetector" then 
			
			fireclickdetector(v)
		end
	end
	end
	
	end)
	section1:addButton("No Vamp Burn", function()
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.SunBurn:remove()
	
	end)
	section1:addButton("Full Bright", function()
		
		local Lighting = game:GetService("Lighting")
	local function brightFunc()
		local lchildren = game:GetService("Lighting"):GetChildren()
		for i, v in pairs(lchildren) do
			v:remove()
		end
			game:GetService("Lighting").GlobalShadows = false
			
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 9e9
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
				if v.Parent == "Lighting" then
					v:remove()
		end
			end
		game:GetService("RunService").Heartbeat:Connect(brightFunc)
	end)
	section1:addButton("No Fall", function()
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes:FindFirstChild("FallDamage") then
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.FallDamage:remove()
		end
	   if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes:FindFirstChild("ApplyFallDamage") then
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.ApplyFallDamage:remove()
		end
	end)
	
	
	section1:addButton("No Kill Bricks", function()
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "Fire" then do 
	 
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "KillBrick" then do 
	 
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "ArdorianKillBrick" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "ArdorianKillbrick" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "Lava" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "PitKillBrick" then do
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	   
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "KillFire" then do
	  local replacement = Instance.new('Part')
	  replacement.Parent = game:GetService("Workspace")
	  replacement.Name = "replacement"
	  replacement.Position = Vector3.new(1448, -566, -5822)
	  replacement.Anchored = true
	  replacement.Size = Vector3.new(500,2,500)
	   local replacement1 = Instance.new('Part')
	  replacement1.Parent = game:GetService("Workspace")
	  replacement1.Name = "replacement1"
	  replacement1.Position = Vector3.new(1695, -43, -2486.5)
	  replacement1.Anchored = true
	  replacement1.Size = Vector3.new(2048,2,1719)
	   local replacement2 = Instance.new('Part')
	  replacement2.Parent = game:GetService("Workspace")
	  replacement2.Name = "replacement2"
	  replacement2.Position = Vector3.new(2747, -43, -2486.5)
	  replacement2.Anchored = true
	  replacement2.Size = Vector3.new(2048,2,1719)
	  --3283, -43, -2263
		v.CFrame = CFrame.new(6900000,690000,690000)
	   
	end
	end
	end
	end)
		section1:addButton("Illu Detector", function()
	while wait(6) do
		
	for i, v in pairs(game:GetService("Players"):GetDescendants()) do
		if v.Name == "Observe" then
		   
			augahghagw = true
		
	end
	end
	for i, v in pairs(game:GetService("Workspace").Live:GetDescendants()) do
		if v.Name == "Observe" then
		   
			augahghagw = true
	
	
	end
	end
	if augahghagw == true then
	  venyx:Notify("Illusionist In Server", "Be Careful!      ")
	  end
	end
	end)
	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	end)
	section1:addButton("Rejoin", function()
		game:GetService("TeleportService"):Teleport(10829443763)
		end)
	
	
		
	
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait() do
	if autofarmt7 == true then
	  
	local teleport_table = {
		location1 = Vector3.new(3976, 439, -786),
		location2 = Vector3.new(3991, 439, -1014),
		location3 = Vector3.new(4021, 439, -1015)
		
	
	  
	
		 
	}
	
	local tween_s = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
	local lp = game:GetService("Players").LocalPlayer
	function bypass_teleport(v)
		if lp.Character and
		lp.Character:FindFirstChild("HumanoidRootPart") then
			local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			local cf = CFrame.new(v)
			local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
			a:Play()
			a.Completed:wait()
			antifall:remove()
		end
	 end
	
	bypass_teleport(teleport_table.location1)
	wait(5)
	bypass_teleport(teleport_table.location2)
	
	
	wait(2)
	bypass_teleport(teleport_table.location3)
	 
			
	
	wait(2)
	
	
	
	
	
	end
	end
	
		
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
	
	
	end
	if game.PlaceId == 3652625463 then
	wait(2)
		-- init
		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
		local venyx = library.new("Statue Hub", 5013109572)
		local af = false
		-- themes
		local themes = {
			Background = Color3.fromRGB(24, 24, 24),
			Glow = Color3.fromRGB(0, 0, 0),
			Accent = Color3.fromRGB(10, 10, 10),
			LightContrast = Color3.fromRGB(20, 20, 20),
			DarkContrast = Color3.fromRGB(14, 14, 14),  
			TextColor = Color3.fromRGB(255, 255, 255)
		}
		
	local lp = game:GetService("Players").LocalPlayer
	wait()
	game:GetService("RunService").Heartbeat:Connect(function()
		
	if af == true then
		local args = {
		[1] = {
			[1] = "GainMuscle"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	local args = {
		[1] = {
			[1] = "SellMuscle"
		}
	}
	
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
	end
	end)
		-- first page
		local page = venyx:addPage("Lifting Simulator", 5012544693)
		
		local section1 = page:addSection("Automation")
		
		section1:addToggle("Auto Farm", nil, function(aftog)
			af = aftog
		end)
		section1:addButton("Buy Gui", function()
			game:GetService("Players").LocalPlayer.PlayerGui["Main_Gui"]["UpgradeMenu_Frame"].Visible = true
		end)
			
	
	
		section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
		-- second page
		local theme = venyx:addPage("Theme", 5012544693)
		local colors = theme:addSection("Colors")
		
		for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
			colors:addColorPicker(theme, color, function(color3)
				venyx:setTheme(theme, color3)
			end)
		end
		
		-- load
		venyx:SelectPage(venyx.pages[1], true)
	end
	wait(1)
	if game.PlaceId == 8704181738 then
	
		-- init
		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
		local venyx = library.new("Statue Hub", 5013109572)
		
		-- themes
		local themes = {
			Background = Color3.fromRGB(24, 24, 24),
			Glow = Color3.fromRGB(0, 0, 0),
			Accent = Color3.fromRGB(10, 10, 10),
			LightContrast = Color3.fromRGB(20, 20, 20),
			DarkContrast = Color3.fromRGB(14, 14, 14),  
			TextColor = Color3.fromRGB(255, 255, 255)
		}
		
		-- first page
		local page = venyx:addPage("Tien Tien Piece", 5012544693)
		local section1 = page:addSection("Character Mods")
		local section2 = page:addSection("Automation")
		
		section2:addToggle("Auto Skill", nil, function(spellspamtog)
			spellspam = spellspamtog
		end)
		section1:addButton("Extend Hitboxes", function()
			while wait(1) do
		
			if game:GetService("Players").LocalPlayer.Character then
				for i ,v in pairs(game:GetService("Workspace"):GetDescendants()) do 
			if v.Name == "HumanoidRootPart" and v.Parent:FindFirstChild("Humanoid") and v ~= game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
				v.Size = Vector3.new(20, 20, 20)
				v.Transparency = .8
				v.CanCollide = false
			
			end
			end
			end
		end
		
		end)
			section2:addButton("Auto Gacha", function()
	
	game:GetService("RunService").Heartbeat:Connect(function()
		fireclickdetector(game:GetService("Workspace").BMP.ClickPart.ClickDetector)
	end)
	
	end)
		section2:addButton("Auto Melee Stat", function()
			game:GetService("RunService").Heartbeat:Connect(function()
	local args = {
		[1] = "Melee"
	}
	
	game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
	
	end)
		end)
		section2:addButton("Auto Attack", function()
			while wait() do
				if game:GetService('Players').LocalPlayer.Character then
				for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants()) do
					if v.Name == "Handle" and v.Parent:FindFirstChild("Combo") then
				local args = {
					[1] = v
				}
				
				game:GetService("Players").LocalPlayer.Character.Katana.Combo.C0:FireServer(unpack(args))
				end
				end
				end
				end
		end)
		section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
		-- second page
		local theme = venyx:addPage("Theme", 5012544693)
		local colors = theme:addSection("Colors")
		
		for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
			colors:addColorPicker(theme, color, function(color3)
				venyx:setTheme(theme, color3)
			end)
		end
		while wait(.6) do
			if spellspam == true then
			
			for i ,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do 
		if v.Name == "Fire" or v.Name == "RemoteEvent" or v.Name == "RemoteEventS" then
		local args = {
			[1] = game:GetService("Players").LocalPlayer
		}
		
		v:FireServer(unpack(args))
		
		local args = {
			[1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		}
		
		v:FireServer(unpack(args))
		v:FireServer()
		local args = {
			[1] = CFrame.new(Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame), Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)),
			[2] = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		}
		
		v:FireServer(unpack(args))
		local args = {
			[1] = CFrame.new(Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame), Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)),
			[2] = Vector3.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
		}
		
		v:FireServer(unpack(args))
		end
		end
		end
		end
		-- load
		venyx:SelectPage(venyx.pages[1], true)
		end
	if game.PlaceId == 10858274778 then
		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	
	
	
	
	local page = venyx:addPage("Not Rogue Lineage", 5012544693)
	local section1 = page:addSection("Main")
	getgenv().Toggled = false;
	local Player = game:GetService('Players').LocalPlayer;
	local Camera = workspace.Camera;
	local FlySpeed = 150;
	local autofarmt7 = false
	local UIS = game:GetService("UserInputService")
	local holdingWKey = false
	local holdingSKey = false
	
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.W)then
			holdingWKey = false
		end
	end)
	
	
	UIS.InputBegan:Connect(function(inputObject) 
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = true
	
		end
	end)
	
	UIS.InputEnded:Connect(function(inputObject)
		if(inputObject.KeyCode==Enum.KeyCode.S)then
			holdingSKey = false
		end
	end)
	
	
	
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
	if holdingWKey == true then
	Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
	end
	if holdingSKey == true then
	  Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed * -1;
	
	end
	
	if holdingSKey == false and holdingWKey == false then
		Player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
	end
	end
	
	end)
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * FlySpeed;
		end;
	end)
	
	
	
	
	getgenv().AutowalkToggled = false;
	local autopickup = false
	local Speed = 150;
	wait(.5)
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().AutowalkToggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Player.Character.HumanoidRootPart.CFrame.LookVector * Speed;
		end;
	end)
	section1:addToggle("Auto Farm Tundra 2", nil, function(autofarmt7tog)
		autofarmt7 = autofarmt7tog
	venyx:Notify("AutoFarm Notification", "Make Sure To Have Trinket AutoPickup On")
	end)
	
	section1:addButton("Lag Server (requires gate)", function()
	game:GetService("RunService").Heartbeat:Connect(function()
	fireclickdetector(game:GetService("Workspace").NPCs.Adralik.ClickDetector)
	end)
	end)
	section1:addKeybind("Fly", Enum.KeyCode.Z, function()
	getgenv().Toggled = not getgenv().Toggled
		
	end, function()
	
	end)
	section1:addSlider("FlySpeed", 1, 1, 200, function(value)
	FlySpeed = value
	end)
	section1:addKeybind("Speed", Enum.KeyCode.X, function()
	getgenv().AutowalkToggled = not getgenv().AutowalkToggled
		
	end, function()
	
	end)
	
	section1:addSlider("WalkSpeed", 1, 1, 200, function(speedvalue)
	Speed = speedvalue
	end)
	section1:addButton("Temp Lock", function()
	
	game:GetService("RunService").Heartbeat:Connect(function()
		local args = {
		[1] = "Cardinal Crossing"
	}
	
	game:GetService("ReplicatedStorage").Requests.SetCurrentArea:FireServer(unpack(args))
	
		end)
	end)
	section1:addButton("No Fire", function()
	while wait() do
	
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Burning") and game:GetService("Players").LocalPlayer.Character then
	game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.Dodge:FireServer()
	end
	end
	end)
	section1:addTextbox("Spectate", "Name", function(playername, focusLost)
	
		if focusLost then
			
			if game:GetService("Players"):FindFirstChild(playername) and game:GetService("Players"):FindFirstChild(playername).Character then
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(playername).Character
	
	end
		end
	end)
	section1:addButton("No Orderly Barriers", function()
		for i, v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
			if v.Name == "OrderField" then
				v:remove()
				end
			end
	end)
	section1:addButton("Auto Trinket Pickup", function()
		
		while wait(2) do
	for i, v in pairs(game:GetService("Workspace").Trinkets:GetDescendants()) do
		if v.ClassName == "ClickDetector" then 
			
			fireclickdetector(v)
		end
	end
	end
	
	end)
	section1:addButton("No Vamp Burn", function()
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.SunBurn:remove()
	
	end)
	section1:addButton("Full Bright", function()
		
		local Lighting = game:GetService("Lighting")
	local function brightFunc()
		local lchildren = game:GetService("Lighting"):GetChildren()
		for i, v in pairs(lchildren) do
			v:remove()
		end
			game:GetService("Lighting").GlobalShadows = false
			
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 9e9
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
				if v.Parent == "Lighting" then
					v:remove()
		end
			end
		game:GetService("RunService").Heartbeat:Connect(brightFunc)
	end)
	section1:addButton("No Fall", function()
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes:FindFirstChild("FallDamage") then
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.Remotes.FallDamage:remove()
		end
	end)
	
	
	section1:addButton("No Kill Bricks", function()
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "Fire" then do 
	 
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "KillBrick" then do 
	 
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "ArdorianKillBrick" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "ArdorianKillbrick" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "Lava" then do
	   
		v.CFrame = CFrame.new(6900000,690000,690000)
		
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "PitKillBrick" then do
	  
		v.CFrame = CFrame.new(6900000,690000,690000)
	   
	end
	end
	end
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "KillFire" then do
	  local replacement = Instance.new('Part')
	  replacement.Parent = game:GetService("Workspace")
	  replacement.Name = "replacement"
	  replacement.Position = Vector3.new(1448, -566, -5822)
	  replacement.Anchored = true
	  replacement.Size = Vector3.new(500,2,500)
	   local replacement1 = Instance.new('Part')
	  replacement1.Parent = game:GetService("Workspace")
	  replacement1.Name = "replacement1"
	  replacement1.Position = Vector3.new(1695, -43, -2486.5)
	  replacement1.Anchored = true
	  replacement1.Size = Vector3.new(2048,2,1719)
	   local replacement2 = Instance.new('Part')
	  replacement2.Parent = game:GetService("Workspace")
	  replacement2.Name = "replacement2"
	  replacement2.Position = Vector3.new(2747, -43, -2486.5)
	  replacement2.Anchored = true
	  replacement2.Size = Vector3.new(2048,2,1719)
	  --3283, -43, -2263
		v.CFrame = CFrame.new(6900000,690000,690000)
	   
	end
	end
	end
	end)
		section1:addButton("Illu Detector", function()
	while wait(6) do
		
	for i, v in pairs(game:GetService("Players"):GetDescendants()) do
		if v.Name == "Observe" then
		   
			augahghagw = true
		
	end
	end
	for i, v in pairs(game:GetService("Workspace").Live:GetDescendants()) do
		if v.Name == "Observe" then
		   
			augahghagw = true
	
	
	end
	end
	if augahghagw == true then
	  venyx:Notify("Illusionist In Server", "Be Careful!      ")
	  end
	end
	end)
	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	end)
	section1:addButton("Rejoin", function()
		game:GetService("TeleportService"):Teleport(10829443763)
		end)
	
	
		
	
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait() do
	if autofarmt7 == true then
	  
	local teleport_table = {
		location1 = Vector3.new(3976, 439, -786),
		location2 = Vector3.new(3991, 439, -1014),
		location3 = Vector3.new(4021, 439, -1015)
		
	
	  
	
		 
	}
	
	local tween_s = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
	local lp = game:GetService("Players").LocalPlayer
	function bypass_teleport(v)
		if lp.Character and
		lp.Character:FindFirstChild("HumanoidRootPart") then
			local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			local cf = CFrame.new(v)
			local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
			a:Play()
			a.Completed:wait()
			antifall:remove()
		end
	 end
	
	bypass_teleport(teleport_table.location1)
	wait(5)
	bypass_teleport(teleport_table.location2)
	
	
	wait(2)
	bypass_teleport(teleport_table.location3)
	 
			
	
	wait(2)
	
	
	
	
	
	end
	end
	
		
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
	
	
	end
	wait(.5)
	if game.PlaceId == 9980179145 then
		local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	wait(2)
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Speed Race Clicker", 5012544693)
	local section1 = page:addSection("Main")
	local AutoFarmsrc = false
	section1:addButton("Anti-AFK", function()
		local vu =game:GetService('VirtualUser')
	game:GetService('Players').LocalPlayer.Idled:connect(function()
	vu:CaptureController()
	vu:ClickButton2(Vector2.new())
	end)
	end)
	section1:addButton("Antilag (IY)", function()
		while wait(5) do
		local fps = workspace:GetRealPhysicsFPS()
	if fps < 10 then
		game:GetService("TeleportService"):Teleport(537413528)
	end
	end
		local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
		Terrain.WaterWaveSize = 0
		Terrain.WaterWaveSpeed = 0
		Terrain.WaterReflectance = 0
		Terrain.WaterTransparency = 0
		Lighting.GlobalShadows = false
		Lighting.FogEnd = 9e9
		settings().Rendering.QualityLevel = 1
		for i,v in pairs(game:GetDescendants()) do
			if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			end
		end
		for i,v in pairs(Lighting:GetDescendants()) do
			if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
				v.Enabled = false
			end
		end
		workspace.DescendantAdded:Connect(function(child)
			coroutine.wrap(function()
				if child:IsA('ForceField') then
					RunService.Heartbeat:Wait()
					child:Destroy()
				elseif child:IsA('Sparkles') then
					RunService.Heartbeat:Wait()
					child:Destroy()
				elseif child:IsA('Smoke') or child:IsA('Fire') then
					RunService.Heartbeat:Wait()
					child:Destroy()
				end
			end)()
		end)
		end)
	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
		end)
	
	section1:addToggle("Auto Farm Toggle", nil, function(autofarmtoggletogsrc)
	
	   if autofarmtoggletogsrc == false then
	   venyx:Notify("Auto Farm Notification:", "Autofarm Will Stop After Completion...       ")
	   end
		
	AutoFarmsrc = autofarmtoggletogsrc
	end)
	
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait() do
		if AutoFarmsrc == true then
	
	
	  
	local teleport_table = {
		location1 = Vector3.new(12000, 3, 0),
		location2 = Vector3.new(-270000, 3, 0),
		 location3 = Vector3.new(-726000, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		
		
	}
	
	local tween_s = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(2,Enum.EasingStyle.Linear)
	local lp = game:GetService("Players").LocalPlayer
	function bypass_teleport(v)
		if lp.Character and
		lp.Character:FindFirstChild("HumanoidRootPart") then
			local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			local cf = CFrame.new(v)
			local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
			a:Play()
			a.Completed:wait()
			antifall:remove()
		end
	end
	bypass_teleport(teleport_table.location1)
	bypass_teleport(teleport_table.location2)
	bypass_teleport(teleport_table.location3)
	repeat wait() until lp.Character
	  
	
	
	
	end
	end
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
	end
	wait(.2)
	if game.PlaceId == 10429088113 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	wait(2)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Jump Race", 5012544693)
	local section1 = page:addSection("Main")
	local AutoFarmbb = false
	section1:addButton("Anti-AFK", function()
		local vu =game:GetService('VirtualUser')
	game:GetService('Players').LocalPlayer.Idled:connect(function()
	vu:CaptureController()
	vu:ClickButton2(Vector2.new())
	end)
	end)

	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
		end)
	
	section1:addToggle("Auto Farm Toggle", nil, function(autofarmtoggletogjr)
	   if autofarmtoggletogjr == false then
	   venyx:Notify("Auto Farm Notification:", "Autofarm Will Stop After Completion...       ")
	   end
		
	AutoFarmjr = autofarmtoggletogjr
	end)
	
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait(1) do
		if AutoFarmjr == true then
	
	  
	
	
	local tween_s = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(.5,Enum.EasingStyle.Linear)
	local lp = game:GetService("Players").LocalPlayer
	function bypass_teleport(v)
		if lp.Character and
		lp.Character:FindFirstChild("HumanoidRootPart") then
			local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			local cf = CFrame.new(v)
			local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
			a:Play()
			a.Completed:wait()
			antifall:remove()
		end
	end
	
	repeat wait() until lp.Character
	bypass_teleport(game:GetService("Workspace").from100.Position)
	
	
	
	end
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	end
	if game.PlaceId == 537413528 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	wait(2)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("BBFT", 5012544693)
	local section1 = page:addSection("Main")
	local AutoFarmjr = false
	section1:addButton("Anti-AFK", function()
		local vu =game:GetService('VirtualUser')
	game:GetService('Players').LocalPlayer.Idled:connect(function()
	vu:CaptureController()
	vu:ClickButton2(Vector2.new())
	end)
	end)

	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
		end)
	
	section1:addToggle("Auto Farm Toggle", nil, function(autofarmtoggletogbb)
	   if autofarmtoggletogbb == false then
	   venyx:Notify("Auto Farm Notification:", "Autofarm Will Stop After Completion...       ")
	   end
		
	AutoFarmbb = autofarmtoggletogbb
	end)
	
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait(.5) do
		if AutoFarmbb == true then
	
	  
	local teleport_table = {
		location1 = Vector3.new(-59, 93, 124),
		location2 = Vector3.new(-65, 90, 986),
		location3 = Vector3.new(-71, 68, 1320),
		
		 location4 = Vector3.new(-73, 63, 1385),
		  
		 location5 = Vector3.new(-79, 91, 1972),
		 location6 = Vector3.new(-79, 91, 2080),
		 location7 = Vector3.new(-81, 91, 2190),
		 location8 = Vector3.new(-84, 116, 2638),
		 location9 = Vector3.new(-69, 116, 2861),
		 location10 = Vector3.new(-69, 116, 2952),
		 location11 = Vector3.new(-69, 116, 3604),
		 location12 = Vector3.new(-69, 116, 3687),
		 location13 = Vector3.new(-69, 116, 4122),
		 location14 = Vector3.new(-70, 116, 4402),
		 location15 = Vector3.new(-70, 116, 4480),
		 location16 = Vector3.new(-70, 116, 4863),
		 location17 = Vector3.new(-70, 116, 5102),
		 location18 = Vector3.new(-70, 116, 5289),
		 location19 = Vector3.new(-58, 116, 5724),
		 location20 = Vector3.new(-61, 116, 5921),
		 location21 = Vector3.new(-61, 116, 6050),
		 location22 = Vector3.new(-59, 116, 6392),
		 location23 = Vector3.new(-58, 116, 6701),
		 location24 = Vector3.new(-58, 116, 6808),
		 location25 = Vector3.new(-81, 116, 7464),
	   location26 = Vector3.new(-87, 116, 7559),
	   location27 = Vector3.new(-56, 116, 8076),
	   location28 = Vector3.new(-56, 116, 8250),
		location29 = Vector3.new(-56, -363, 9493)
	
	}
	
	local tween_s = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(.5,Enum.EasingStyle.Linear)
	local lp = game:GetService("Players").LocalPlayer
	function bypass_teleport(v)
		if lp.Character and
		lp.Character:FindFirstChild("HumanoidRootPart") then
			local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			local cf = CFrame.new(v)
			local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
			a:Play()
			a.Completed:wait()
			antifall:remove()
		end
	end
	local antifall = Instance.new("BodyVelocity")
			antifall.velocity = Vector3.new(0,0,0)
			antifall.Parent = lp.Character.HumanoidRootPart
			if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location1)
	wait(.3)
	end
	if success == false then
		end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location2)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location3)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location4)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location5)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location6)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	
	bypass_teleport(teleport_table.location7)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location8)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location9)
	wait(.3)
	
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	
	bypass_teleport(teleport_table.location10)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location11)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location12)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location13)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location14)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location15)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location16)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location17)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location18)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location19)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location20)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location21)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location22)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location23)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location24)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location25)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	wait(.3)
		end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location26)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location27)
	wait(.3)
	end
	 if lp.Character:FindFirstChild("HumanoidRootPart") then
	bypass_teleport(teleport_table.location28)
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(teleport_table.location29)
	end
	repeat wait() until lp.Character
	rconsolename("STATUE HUB BBFT AUTOFARM")
	
	wait(4)
	repeat wait() until lp.Character
	rconsoleprint("@@MAGENTA@@")
	local currentgold = game:GetService("Players").LocalPlayer.Data.Gold.Value
	rconsoleprint(" Successfully Made It To The End, Current Gold: ")
	rconsoleprint(currentgold)
	end
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	end
	
	if game.PlaceId == 9585537847 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	wait(2)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Shadovis RPG", 5012544693)
	local section1 = page:addSection("Main")
	
	section1:addButton("All Cubits", function()
		for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ProximityPrompt") then
					fireproximityprompt(v)
				end
			end
		end)
	section1:addButton("Spell Spam", function()
		
	while wait(.2) do
	local args = {
		[1] = "Input",
		[2] = "Domini",
		[3] = 4,
		[4] = "Slam"
	}
	
	game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
	local args = {
		[1] = "Input",
		[2] = "Scroll of Yorick",
		[3] = 7,
		[4] = "Barrage"
	}
	
	game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
	local args = {
		[1] = "Input",
		[2] = "Scroll of Yorick",
		[3] = 2.909090909090909,
		[4] = "Fireblast"
	}
	
	game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
	
	
	end
		end)
	
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	end
	local gameid = game.PlaceId
	
	if gameid == 10524502174 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("OPF", 5012544693)
	local section1 = page:addSection("Main")
	local AutoFarm = false
	local autofarmon = false
	section1:addButton("Respawn", function()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
		end)
	section1:addButton("KillAura", function()
	 local lp = game:GetService("Players").LocalPlayer
	 
	while wait() do
		
	for i, v in pairs(game:GetService("Workspace").__GAME.__Mobs:GetDescendants()) do
	if v.Parent.Parent == game:GetService("Workspace").__GAME.__Mobs and lp.Character:FindFirstChild("HumanoidRootPart") then
		
		
	local args = {
		[1] = "Attack",
		[2] = v
	}
	
	game:GetService("ReplicatedStorage").Game.__Remotes.AttackEvent:FireServer(unpack(args))
	
	end
	end
	end
	end)
	section1:addToggle("Auto Farm Toggle", nil, function(autofarmtoggletog)
	   if autofarmtoggletog == false then
	   venyx:Notify("Auto Farm Notification:", "Stopping Autofarm...       ")
	   end
		
	Autofarm = autofarmtoggletog
	end)
	
	section1:addButton("Auto Punch", function()
	while wait(.2) do
		local args = {
		[1] = "Normal"
	}
	
	game:GetService("ReplicatedStorage").Game.__Remotes.ClickEvent:FireServer(unpack(args))
	
	end
	end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait() do
		if Autofarm == true and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	hrp.CFrame = CFrame.new(14, 49, -350)
	wait(.0)
	hrp.CFrame = CFrame.new(-219, 49, -289)
	wait(.02)
	hrp.CFrame = CFrame.new(-591, 49, -311)
	wait(.02)
	hrp.CFrame = CFrame.new(-1032, 49, -340)
	wait(.02)
	hrp.CFrame = CFrame.new(-1751, 49, -292)
	wait(.02)
	hrp.CFrame = CFrame.new(-2151, 49, -280)
	wait(.02)
	hrp.CFrame = CFrame.new(-2353, 49, -159)
	wait(.02)
	hrp.CFrame = CFrame.new(-2439, 49, 409)
	wait(.02)
	hrp.CFrame = CFrame.new(-2431, 49, 637)
	wait(.02)
	hrp.CFrame = CFrame.new(-2397, 49, 1221)
	wait(.02)
	hrp.CFrame = CFrame.new(-2456, 49, 1547)
	wait(.02)
	hrp.CFrame = CFrame.new(-2443, 49, 2016)
	wait(.02)
	hrp.CFrame = CFrame.new(-2418, 49, 2493)
	wait(.02)
	hrp.CFrame = CFrame.new(-2328, 49, 3005)
	wait(.02)
	hrp.CFrame = CFrame.new(-2128, 49, 3036)
	wait(.02)
	hrp.CFrame = CFrame.new(-1316, 49, 2963)
	wait(.02)
	hrp.CFrame = CFrame.new(-869, 49, 3027)
	wait(.02)
	hrp.CFrame = CFrame.new(-188, 49, 3066)
	wait(.02)
	hrp.CFrame = CFrame.new(-50, 49, 3033)
	wait(.02)
	hrp.CFrame = CFrame.new(247, 49, 3022)
	wait(.02)
	end
	end
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
		end
	if gameid == 9284097280 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("AT", 5012544693)
	local section1 = page:addSection("Main")
	section1:addButton("Remove Purchase Prompts", function()
	game:GetService("CoreGui").PurchasePrompt:remove()
	end)
	section1:addButton("Auto Collect", function()
		while wait(.5) do
			if game:GetService("Players").LocalPlayer.Character then
	
	local Playerhead = game:GetService("Players").LocalPlayer.Character.Head
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
	
	
		if v.Name == "TouchInterest" and v.Parent.Name == "Part" then
	 firetouchinterest(v.Parent, Playerhead, 1)
	firetouchinterest(v.Parent, Playerhead, 0)
	end
	end
	end
	end
	end)
	section1:addButton("Auto Buy", function()
	while wait(.5) do
		local Playerhead = game:GetService("Players").LocalPlayer.Character.Head
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if game:GetService("Players").LocalPlayer.Character then
	
	if v.Name == "Price" then
		firetouchinterest(v.Parent.Parent, Playerhead, 0)
		firetouchinterest(v.Parent.Parent, Playerhead, 1)
	end
	end
	end
	end
	end)
	section1:addButton("Auto Clean", function()
	while wait(.5) do
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v.Name == "Puddle" and v:FindFirstChild("ProximityPrompt") then
	fireproximityprompt(v.ProximityPrompt, 1)
	end
	end
	end
	end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
		end
	if gameid == 9872472334 then
		
	-- init
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	wait(2)
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Evade", 5012544693)
	wait(1)
	local section1 = page:addSection("Section 1")
	section1:addButton("FullBright", function()
		game:GetService("Lighting").FogStart = 0
		game:GetService("Lighting").ExposureCompensation = 3
		game:GetService("Lighting").ClockTime = 12
		game:GetService("Lighting").Brightness = 1
		game:GetService("Lighting").GlobalShadows = false
		while wait(.01) do
			for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
				if v.Parent == "Lighting" then
					v:remove()
		end
			end
	end
	end)
	section1:addButton("Knocked God Mode", function()
		if game:GetService("Players").LocalPlayer:FindFirstChild("Died") then
	game:GetService("Players").LocalPlayer.Died:remove()
	end
	end)
	section1:addButton("Esp", function()
	
	while wait(.1) do
	
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if v.ClassName == "Player" and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid")then
	
	local BillboardGui = Instance.new("BillboardGui")
	local Name = Instance.new("TextLabel")
	local Health = Instance.new("TextLabel")
	local Healthval = Instance.new("TextLabel")
	BillboardGui.Name = "Esp"
			BillboardGui.Parent = v.Character.Head
			BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			BillboardGui.Active = true
			BillboardGui.AlwaysOnTop = true
			BillboardGui.LightInfluence = 1
			BillboardGui.Size = UDim2.new(0, 200, 0, 50)
			BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
			Healthval.Name = "HealthVal"
			Healthval.Parent = BillboardGui
			Healthval.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
			Healthval.BackgroundTransparency = 1
			Healthval.Size = UDim2.new(1, 1, 0, 50)
			Healthval.Font = Enum.Font.Code
			Healthval.Text = v.Character.Humanoid.Health
			Healthval.TextColor3 = Color3.new(0, 0, 0)
			Healthval.TextSize = 14
			Healthval.TextXAlignment = Enum.TextXAlignment.Left
			Healthval.Position = UDim2.new(0, 170, 0, 0)
			Name.Name = "Name"
			Name.Parent = BillboardGui
			Name.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
			Name.BackgroundTransparency = 1
			Name.Size = UDim2.new(1, 1, 0, 50)
			Name.Font = Enum.Font.Code
			Name.Text = v.Name
			Name.TextColor3 = Color3.new(0, 0, 0)
			Name.TextSize = 14
			Name.TextXAlignment = Enum.TextXAlignment.Left
			local health = "Health"
			Health.Name = health
			Health.Parent = BillboardGui
			Health.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
			Health.BackgroundTransparency = 1
			Health.Position = UDim2.new(0, 120, 0, 0)
			Health.Size = UDim2.new(1, 100, 0, 50)
			Health.Font = Enum.Font.Code
			Health.Text = "Health"
			Health.TextColor3 = Color3.new(0, 0, 0)
			Health.TextSize = 14
			Health.TextXAlignment = Enum.TextXAlignment.Left
			if game:GetService("Players").LocalPlayer.Character.Head:FindFirstChild("BillboardGui") then
				game:GetService("Players").LocalPlayer.Character.Head.BillboardGui:remove()
				end
	
		
			end
	end
		end
		   
		while wait() do
			game:GetService("Players").LocalPlayer.Character.Head.Esp:remove()
	end
	while wait() do
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v.Name == "Esp" then wait(.2) v:remove()
			end
		end
	end
		while wait() do
			if game:GetService("Players").LocalPlayer.Character.Head:FindFirstChild("Esp") then
				game:GetService("Players").LocalPlayer.Character.Head.Esp:remove()
				end
	end
	end)
	section1:addButton("Bot Esp", function()
	while wait(5) do
	for i,v in pairs(game:GetService("Workspace").Game.Players:GetDescendants()) do
		if v.Name == "HRP" then
	 local esp = Instance.new("Highlight")
	 esp.Name = "Highlights"
	 esp.FillTransparency = 0
	 esp.FillColor = Color3.new(0, 0, 1)
	 esp.OutlineColor = Color3.new(1, 0.333333, 1)
	 esp.OutlineTransparency = 0.4
	 esp.Parent = v
	 v.Transparency = 0
		end
	end
	end
	end)
	
	section1:addButton("My Reused Hover + Speed thingy (x)", function()
		getgenv().AutowalkToggled = false;
	local Player = game:GetService('Players').LocalPlayer;
	local Camera = workspace.Camera;
	local Speed = 200;
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().AutowalkToggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Player.Character.HumanoidRootPart.CFrame.LookVector * Speed;
		end;
	end)
	
	Player:GetMouse().KeyDown:connect(function(key)
	if key == "x" then
	 getgenv().AutowalkToggled = not getgenv().AutowalkToggled;
	end
	end)
	end)
	section1:addButton("My Reused Fly (z)", function()
	
	getgenv().Toggled = false;
	local Player = game:GetService('Players').LocalPlayer;
	local Camera = workspace.Camera;
	local Speed = 250;
	
	game:GetService'RunService'.RenderStepped:Connect(function()
		if (getgenv().Toggled == true and Player.Character and Player.Character:FindFirstChild('HumanoidRootPart')) then
			Player.Character.HumanoidRootPart.Velocity = Camera.CFrame.LookVector * Speed;
		end;
	end)
	
	Player:GetMouse().KeyDown:connect(function(key)
	if key == "z" then
	 getgenv().Toggled = not getgenv().Toggled;
	end
	end)
	
	end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	
		end
	local gameid = game.PlaceId
	if gameid == 9103898828 then
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Venyx", 5013109572)
	
	-- themes
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Rogue Demon", 5012544693)
	local section1 = page:addSection("Section 1")
	section1:addSlider("Walkspeed", 1, 1, 60, function(value)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)
	
	section1:addButton("AutoBreath", function()
		while wait(.5) do
		local args = {
		[1] = "Start"
	}
	
	game:GetService("ReplicatedStorage").Knit.Packages.Knit.Services.BreathingService.RE.Breath:FireServer(unpack(args))
	end
	end)
	section1:addButton("No Fall", function()
		game:GetService("ReplicatedStorage").Knit.Packages.Knit.Services.FallDamageService.RE.FallDamage:remove()
	end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	
	-- load
	venyx:SelectPage(venyx.pages[1], true)
	end
	
	
	local gameid = game.PlaceId
	if gameid == 9285238704 then
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	local autowintoggle = false
	
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	
	-- first page
	local page = venyx:addPage("Race Clicker", 5012544693)
	local section1 = page:addSection("Section 1")
	
	section1:addToggle("Auto Win", nil, function(autowintoggletog)
	   venyx:Notify("Note:", "You Can Only Win Once Per Round")
	autowintoggle = autowintoggletog
	end)
	section1:addButton("Win", function()
	local plr = game:service"Players".LocalPlayer;
	local tween_s = game:service"TweenService";
	local info = TweenInfo.new(5,Enum.EasingStyle.Quad);
	function tp(...)
	   local tic_k = tick();
	   local params = {...};
	   local cframe = CFrame.new(params[1],params[2],params[3]);
	   local tween,err = pcall(function()
		   local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
		   tween:Play();
	   end)
	   if not tween then return err end
	end
	tp(-441061, 85, 35053);
	end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	while wait(7) do 
		if autowintoggle == true
		then
				local plr = game:service"Players".LocalPlayer;
	local tween_s = game:service"TweenService";
	local info = TweenInfo.new(5,Enum.EasingStyle.Quad);
	function tp(...)
	   local tic_k = tick();
	   local params = {...};
	   local cframe = CFrame.new(params[1],params[2],params[3]);
	   local tween,err = pcall(function()
		   local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
		   tween:Play();
	   end)
	   if not tween then return err end
	end
	tp(-441061, 85, 35053);
		end
		end
	-- load
	
	venyx:SelectPage(venyx.pages[1], true)
	end
	
	-- init
	wait(.1)
	local gameid = game.PlaceId
	
	if gameid == 6839171747 then
	wait(2)
	local fesp = false
	local besp = false
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
	local venyx = library.new("Statue Hub", 5013109572)
	
	local autoopen = false
	
	local themes = {
		Background = Color3.fromRGB(24, 24, 24),
		Glow = Color3.fromRGB(0, 0, 0),
		Accent = Color3.fromRGB(10, 10, 10),
		LightContrast = Color3.fromRGB(20, 20, 20),
		DarkContrast = Color3.fromRGB(14, 14, 14),  
		TextColor = Color3.fromRGB(255, 255, 255)
	}
	

	
wait()
	local newroom = game:GetService("ReplicatedStorage").GameData.ChaseStart.Changed:Connect(function()
		local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart.Value
	local room = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
	
	local diff = ChaseStart-room

	if diff > 0 then
	venyx:Notify("Event In Room", ChaseStart)
	end
	end)
	-- first page
	local page = venyx:addPage("Doors", 5012544693)

	local section = page:addSection("Main")
	local section1 = page:addSection("Misc")
	_G.RushSpawned = false
	section1:addButton("FullBright", function()
		game:GetService("Lighting").FogStart = 0
		game:GetService("Lighting").ExposureCompensation = 3
		game:GetService("Lighting").ClockTime = 12
		game:GetService("Lighting").Brightness = 1
		
		game:GetService("Lighting").GlobalShadows = false
		while wait(.01) do
			for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
				if v.Parent == "Lighting" then
					v:remove()
		end
			end
	end
	end)

	section1:addButton("Complete Elevator Power Puzzle", function()
		game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
	
	end)
wait()
	section1:addButton("Auto Complete (buggy)", function()
	
		while wait() do
    
			local name = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
			
			local latest = game:GetService("Workspace").CurrentRooms:FindFirstChild(name).Door
			
			if latest then
				
			if latest:FindFirstChild("Lock") then
				for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v.Name == "ModulePrompt"  and v.Parent:FindFirstChild("Hitbox") then
						for i,v in ipairs(latest.Parent:GetDescendants()) do
								if v.Name == "KeyObtain" then
									HasKey = v
								end
							end
			local CF = CFrame.new
							
					 if HasKey then
							game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
							wait(0.3)
							fireproximityprompt(HasKey.ModulePrompt,0)
							game.Players.LocalPlayer.Character:PivotTo(CF(latest.Door.Position))
							wait(0.3)
							fireproximityprompt(latest.Lock.UnlockPrompt,0)
						end
					   for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
					if v.Name == "ActivateEventPrompt"
					and v.Parent.Parent:FindFirstChild("KeyObtain")
					then
						
						fireproximityprompt(v)
				  
						
					end
			end
								wait(.5)
			   fireproximityprompt(latest.Lock.UnlockPrompt, 1)
			   --game:GetService("Workspace").CurrentRooms.0.Assets.Dresser.DrawerContainer.Knobs.ActivateEventPrompt
			end
			end
			end
			local latest = game:GetService("Workspace").CurrentRooms:FindFirstChild(name)
					
					end
					if latest.Parent.Name == "50" then
						print("ran")
						 latest = game:GetService("Workspace").CurrentRooms:FindFirstChild("51").Door
						 wait(1.5)
						
					end
			if game:GetService("Workspace"):FindFirstChild("RushMoving") then
				local Players = game:GetService("Players")
			
			 
			
				local player = Players.LocalPlayer
				local character = player.Character
				if character and character.Parent then
				
					local currentPivot = character:GetPivot()
					character:PivotTo(currentPivot * CFrame.new(4, 100, 3))
				end
				repeat wait() until not game:GetService("Workspace"):FindFirstChild("RushMoving")
				end
			if game:GetService("Workspace"):FindFirstChild("AmbushMoving") then
				local Players = game:GetService("Players")
			
			 
			
				local player = Players.LocalPlayer
				local character = player.Character
				if character and character.Parent then
					
					local currentPivot = character:GetPivot()
					character:PivotTo(currentPivot * CFrame.new(0, 30, 0))
				end
				repeat wait() until not game:GetService("Workspace"):FindFirstChild("AmbushMoving")
			end
			game:GetService("Players").LocalPlayer.Character:PivotTo(latest.Parent.RoomEnd.CFrame + Vector3.new(0,0,0))
			
					game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
			
			
			end
			
	end)
	section1:addButton("Fast Auto Complete (may kill u lol)", function()
		while wait() do
    
			local name = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
			
			local latest = game:GetService("Workspace").CurrentRooms:FindFirstChild(name).RoomEnd
			
			if latest then
				
			if latest:FindFirstChild("Lock") then
				for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v.Name == "ModulePrompt"  and v.Parent:FindFirstChild("Hitbox") then
						for i,v in ipairs(latest.Parent:GetDescendants()) do
								if v.Name == "KeyObtain" then
									HasKey = v
								end
							end
			local CF = CFrame.new
							
					 if HasKey then
							game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
							wait(0.3)
							fireproximityprompt(HasKey.ModulePrompt,0)
							game.Players.LocalPlayer.Character:PivotTo(CF(latest.Door.Position))
							wait(0.3)
							fireproximityprompt(latest.Lock.UnlockPrompt,0)
						end
					   for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
					if v.Name == "ActivateEventPrompt"
					and v.Parent.Parent:FindFirstChild("KeyObtain")
					then
						
						fireproximityprompt(v)
				  
						
					end
			end
								wait(.5)
			   fireproximityprompt(latest.Lock.UnlockPrompt, 1)
			   --game:GetService("Workspace").CurrentRooms.0.Assets.Dresser.DrawerContainer.Knobs.ActivateEventPrompt
			end
			end
			end
			local latest = game:GetService("Workspace").CurrentRooms:FindFirstChild(name)
					
					end
					if latest.Parent.Name == "50" then
						print("ran")
						 latest = game:GetService("Workspace").CurrentRooms:FindFirstChild("51").RoomEnd
						 wait(1.5)
						
					end
		
		
				local Players = game:GetService("Players")
			
			 
			
		
			game:GetService("Players").LocalPlayer.Character:PivotTo(latest.Parent.RoomEnd.CFrame + Vector3.new(0,0,0))
			
					game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
			
			
			end
	end)
	section1:addButton("Instant Interact", function()
		game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(interactprompt)

			fireproximityprompt(interactprompt, 1)
	
	end)
	end)
	section1:addButton("Auto Monster Notify", function()
		
		while wait(3) do
			if game:GetService("Workspace"):FindFirstChild("AmbushMoving") then
		 venyx:Notify("Monster Spawn Notifier", "Ambush Has Spawned, Hide Quickly!")
			end
		if game:GetService("Workspace"):FindFirstChild("RushMoving") then
	
				venyx:Notify("Monster Spawn Notifier", "Rush Has Spawned, Hide Quickly!")
		end
				   
		if game:GetService("Workspace"):FindFirstChild("LookMan") then
			venyx:Notify("Monster Spawn Notifier", "Ambush Has Spawned, Hide Quickly!")
			
		
	
	
	end
	end
	
	end)
	
	section1:addButton("Esp Key", function()
	while wait(.5) do
	
	--or "Lighter" or "LeverForGate" or "Flashlight" or "Battery"
	for i,v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if v.Name == "KeyObtain" or v.Name == "ElectricalKeyObtain" then
	 local esp = Instance.new("Highlight")
	 esp.Name = "Highlights"
	 esp.FillTransparency = 0
	 esp.FillColor = Color3.new(0, 0, 1)
	 esp.OutlineColor = Color3.new(1, 0.333333, 1)
	 esp.OutlineTransparency = 0.4
	 esp.Parent = v
	end
	end
	end
	end)
wait(.5)
		section1:addButton("Esp Books", function()


game:GetService("RunService").Heartbeat:Connect(function()
    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
    if v.Name == "LiveHintBook" then
    local esp = Instance.new("Highlight")
    esp.Parent = v
    end
    
end
    end)
end)
	section1:addButton("Esp Figure", function()

	
	--or "Lighter" or "LeverForGate" or "Flashlight" or "Battery
	game:GetService("RunService").Heartbeat:Connect(function()
for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
    
if v.Name == "FigureRagdoll" then
local esp = Instance.new("Highlight")
esp.Parent = v

end

end
end)
	end)
	
	section1:addToggle("Play The Seek Soundtrack", nil, function(firemusic)
	
	game:GetService("Workspace")["Ambience_Seek"].Playing = firemusic
	end)

	
	
	section:addToggle("Auto Open Doors", nil, function(autoopentog)
	autoopen = autoopentog
	end)
	
	  section1:addSlider("Walkspeed", 1, 1, 100, function(value)
	
			game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
			
	end)

	section1:addKeybind("Tp Forward", Enum.KeyCode.T, function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local character = player.Character
		if character and character.Parent then
			local currentPivot = character:GetPivot()
			character:PivotTo(currentPivot * CFrame.new(0, 0, -15))
			end
		
	end, function()
	
	end)
	section1:addKeybind("Noclip", Enum.KeyCode.N, function()
game:GetService("Players").LocalPlayer.Character.Collision.CanCollide = not game:GetService("Players").LocalPlayer.Character.Collision.CanCollide

		
	end, function()
	
	end)
	section1:addKeybind("Tp Upward", Enum.KeyCode.Z, function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local character = player.Character
		if character and character.Parent then
			local currentPivot = character:GetPivot()
			character:PivotTo(currentPivot * CFrame.new(0, 15, 0))
			end
		
	end, function()
	
	end)
	
	section1:addButton("Larger FOV", function()
	game:GetService("RunService").Heartbeat:Connect(function()
			game:GetService("Workspace").Camera.FieldOfView = 120
			end)
	end)
	section:addButton("Remove Lever Doors", function()
		
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do if v.Name == "ThingToOpen" then
		v:remove()
	end
	end
	end)
	section:addButton("No Screech", function()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.Screech:remove()
	end)
	section:addButton("No Shade", function()
	game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade:remove()
	end)
	section:addButton("No Glitch", function()
	game:GetService("ReplicatedStorage").ClientModules.EntityModules.Glitch:remove()
	end)
	section:addButton("Remove Room 50 Door", function()
		game:GetService("Workspace").CurrentRooms:FindFirstChild("50").Door.Door:remove()
	end)
	section1:addButton("Remove Jumpscare Noises", function()
		game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener["Jumpscare_Ambush"]:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener["Jumpscare_Ambush2"]:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.Screech:FindFirstChild("Attack"):remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.Screech:FindFirstChild("Caught"):remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener["Jumpscare_Rush"]:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener["Jumpscare_Rush2"]:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Kill:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener["Jumpscare_Seek"]:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.HideMonster.Scare:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.AchievementUnlock.Scare:remove()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator["Main_Game"].RemoteListener.Modules.SpiderJumpscare.Scare:remove()
	end)
	section1:addSlider("Knob Spoofer", 0, 1, 922337203685477580, function(value)
		local args = {
			[1] = value
			
		}
		game:GetService("ReplicatedStorage").ReplicaDataModule.KnobsUpdated:Fire(unpack(args))
	end)
		section1:addSlider("Revive Spoofer", 0, 1, 922337203685477580, function(value)
			local args = {
				[1] = value
				
			}
			game:GetService("ReplicatedStorage").ReplicaDataModule.RevivesUpdated:Fire(unpack(args))
		end)
	section1:addKeybind("Hide/Show GUI", Enum.KeyCode.LeftAlt, function()
	
		venyx:toggle()
	end, function()
	
	end)
	
	-- second page
	local theme = venyx:addPage("Theme", 5012544693)
	local colors = theme:addSection("Colors")
	
	for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
		colors:addColorPicker(theme, color, function(color3)
			venyx:setTheme(theme, color3)
		end)
	end
	-- load
	while wait(2) do
		if antirush == true then
		
	if _G.RushSpawned == true then
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local character = player.Character
		if character and character.Parent then
			local currentPivot = character:GetPivot()
			character:PivotTo(currentPivot * CFrame.new(0, 20, 0))
			
		repeat wait() until
		_G.RushSpawned == false
			local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local character = player.Character
		if character and character.Parent then
			local currentPivot = character:GetPivot()
			character:PivotTo(currentPivot * CFrame.new(0, -20, 0))
		end
		end
	end
	end
	end
	while wait(2) do
	if game:GetService("Workspace"):FindFirstChild("RushMoving") then
		_G.RushSpawned = true
	end
	end
	while wait(2) do
	if not game:GetService("Workspace"):FindFirstChild("RushMoving") then
		_G.RushSpawned = false
	end
	end


game:GetService("RunService").Heartbeat:Connect(function()
for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
    
if fesp == true and v.Name == "FigureRagdoll" then
local esp = Instance.new("Highlight")
esp.Parent = v

end

end
end)
	venyx:SelectPage(venyx.pages[1], true)
	
		
	
	while wait() do
		if autoopen == true then
		for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if v.Name == "ClientOpen" then
			v:FireServer()
			wait(.5)
			for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if v.Name == "PrismaticConstraint" then
			v.TargetPosition = 10
		end
		end
		
	end
	end
	end
	end
	end
	else
	rconsoleprint("Invalid Key.")
	rconsoleprint("Please Reinject")
    wait(1)
    rconsoleclear()
	end
