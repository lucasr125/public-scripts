local plot
function updatePlotVariable()
    for i, v in pairs(game.Workspace.Plots:GetChildren()) do
        if v.Name == "Plot" and v:FindFirstChild("OwnerDisplay") and v:FindFirstChild("OwnerDisplay"):FindFirstChild("BillboardGui") then
            if v:FindFirstChild("OwnerDisplay").BillboardGui.TextLabel.Text == game.Players.LocalPlayer.Name.."'s Plot" then
                plot = v
            end
        end
    end
    print(plot)
end
updatePlotVariable()

local localPlayer = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local settings = {
	["walkspeed"] = 16,
	["jumppower"] = 50,
	["gravity"] = 196.6,
	["hipheight"] = 0,
	["autowalkspeed"] = false,
	["autojumppower"] = false,
	["autohipheight"] = false,
    ["alwaysday"] = false,
    ["autobuy"] = false,
    ["buycooldown"] = 1,
    ["infiniteboosts"] = false,
    ["autohaverst"] = false,
	["increaseminifactory"] = false,
	["minifactorysizemultiplier"] = 1,
    ["increaseallupgraderssize"] = false,
    ["upgradersize"] = 1,
    ["autorebirth"] = false,
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/lucasr125/Bracket_Orion/main/orionlib.lua')))();
local Window = OrionLib:MakeWindow({Name = gameName.." ; "..identifyexecutor(), HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = gameName});

local localTab = Window:MakeTab({Name = "Local",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local SetValueSection = localTab:AddSection({
	Name = "Set Values Section"
})
local mainTab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false});
local TycoonSection = mainTab:AddSection({
	Name = "Tycoon Section"
})

local walkspeedSlider = SetValueSection:AddSlider({Name = "Set walkspeed",Min = 0,Max = 1000,Default = settings.walkspeed,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "walkspeed",Callback = function(Value)
	settings.walkspeed = Value
	localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
end});
local jumppowerSlider = SetValueSection:AddSlider({Name = "Set jumppower",Min = 0,Max = 1000,Default = settings.jumppower,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "jumppower",Callback = function(Value)
	settings.jumppower = Value
	localPlayer.Character.Humanoid.JumpPower = settings.jumppower
	localPlayer.Character.Humanoid.UseJumpPower = true
end});
local hipheightSlider = SetValueSection:AddSlider({Name = "Set hipheight",Min = 0,Max = 50,Default = settings.hipheight,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "hipheight",Callback = function(Value)
	settings.hipheight = Value
	localPlayer.Character.Humanoid.HipHeight = settings.hipheight
end});
local gravitySlider = SetValueSection:AddSlider({Name = "Set gravity",Min = 0,Max = 1000,Default = settings.gravity,Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "gravity",Callback = function(Value)
	settings.gravity = Value
	game.Workspace.Gravity = settings.gravity
end});
local AutoValueSection = localTab:AddSection({
	Name = "Auto Values Section"
})
local walkspeedToggle = AutoValueSection:AddToggle({Name = "Auto walkspeed",Default = settings.autowalkspeed,Callback = function(Value)
	settings.autowalkspeed = Value
	if settings.autowalkspeed == true then
		while task.wait(0.1) and settings.autowalkspeed == true do
			localPlayer.Character.Humanoid.WalkSpeed = settings.walkspeed
		end
	end
end});
local jumppowerToggle = AutoValueSection:AddToggle({Name = "Auto jumppower",Default = settings.autojumppower,Callback = function(Value)
	settings.autojumppower = Value
	if settings.autojumppower == true then
		while task.wait(0.1) and settings.autojumppower == true do
			localPlayer.Character.Humanoid.JumpPower = settings.jumppower
			localPlayer.Character.Humanoid.UseJumpPower = true
		end
	end
end});
local hipheightToggle = AutoValueSection:AddToggle({Name = "Auto hipheight",Default = settings.autohipheight,Callback = function(Value)
	settings.autohipheight = Value
	if settings.autohipheight == true then
		while task.wait(0.1) and settings.autohipheight == true do
			localPlayer.Character.Humanoid.HipHeight = settings.hipheight
		end
	end
end});

local alwaysdayToggle = TycoonSection:AddToggle({Name = "Always day",Default = settings["alwaysday"],Callback = function(Value)
	settings["alwaysday"] = Value
	if settings["alwaysday"] == true then
		while task.wait() and settings["alwaysday"] == true do
			game.Lighting.ClockTime = 12
		end
	end
end});

local infiniteboostsToggle = TycoonSection:AddToggle({Name = "Infinite boosts ( 2x & 3x )",Default = settings["infiniteboosts"],Callback = function(Value)
	settings["infiniteboosts"] = Value
	if settings["infiniteboosts"] == true then
		while task.wait() and settings["infiniteboosts"] == true do
			localPlayer:FindFirstChild("threeBoostTime").Value = 1
            localPlayer:FindFirstChild("twoBoostTime").Value = 1
		end
	end
end});

local autobuyToggle = TycoonSection:AddToggle({Name = "Auto buy", Default = settings["autobuy"], Callback = function(Value)
	settings["autobuy"] = Value
	if settings["autobuy"] == true then
		while task.wait(settings["buycooldown"]) and settings["autobuy"] == true do
            updatePlotVariable()
            if plot then
                coroutine.resume(coroutine.create(function()
                    for _, v in pairs(plot:FindFirstChild("Buttons"):GetChildren()) do
                        if v.Name == "Button" and v.Color == Color3.fromRGB(75, 151, 75) and tonumber(v:GetAttribute("Price")) <= tonumber(localPlayer.leaderstats.Cash.Value) then
                            local button1 = v
                            local bCFrame1 = v.CFrame
                            coroutine.resume(coroutine.create(function()
                                button1.CanCollide = false
                                button1.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
                                task.wait(settings["buycooldown"]/2)
                                button1.CFrame = bCFrame1
                            end))
                        end
                    end
                end))
            end
		end
	end
end});
local buycooldownSlider = TycoonSection:AddSlider({Name = "Set buy cooldown",Min = 1,Max = 10,Default = settings["buycooldown"],Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "cooldown",Callback = function(Value)
	settings["buycooldown"] = Value
end});

if fireclickdetector then
    local autohaverstToggle = TycoonSection:AddToggle({Name = "Auto haverst", Default = settings["autohaverst"], Callback = function(Value)
	    settings["autohaverst"] = Value
	    if settings["autohaverst"] == true then
	    	while task.wait(1) and settings["autohaverst"] == true do
                updatePlotVariable()
	    		for i, v in pairs(plot:FindFirstChild("Items"):GetChildren()) do
	    			if string.find(v.Name, "Farm") then
	    				if v:FindFirstChild("Area") and v:FindFirstChild("Area"):FindFirstChild("ClickDetector") and v:FindFirstChild("imgpart"):FindFirstChild("BillboardGui").Enabled == true then
	    					fireclickdetector(v:FindFirstChild("Area"):FindFirstChild("ClickDetector"))
	    				end
	    				if v.Name == "Farm 1" then
	    					for j, w in pairs(v:FindFirstChild("BoostDrops"):GetChildren()) do
	    						if w.ClassName == "Part" and w:FindFirstChild("TouchInterest") then
	    							w.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
	    						end
	    					end
	    				end
	    			end
	    		end
    		end
	    end
    end});
else
    OrionLib:MakeNotification({Name = "Warning",Content = "Your executor "..identifyexecutor().." doesnt support 'fireclickdetector' function, auto haverst function disabled.",Image = "rbxassetid://4483345998",Time = 5})
end

local increaseminifactoryToggle = TycoonSection:AddToggle({Name = "Increase mini factory size",Default = settings["increaseminifactory"],Callback = function(Value)
	settings["increaseminifactory"] = Value
	if settings["increaseminifactory"] == true then
		while task.wait(0.1) and settings["increaseminifactory"] == true do
            updatePlotVariable()
			if plot:FindFirstChild("Items"):WaitForChild("Mini Factory", 9999):FindFirstChild("TouchPart") then
				local factoryTouchPart = plot:FindFirstChild("Items"):WaitForChild("Mini Factory", 9999):FindFirstChild("TouchPart")
				factoryTouchPart.Size = Vector3.new(settings["minifactorysizemultiplier"], settings["minifactorysizemultiplier"], settings["minifactorysizemultiplier"])
			end
		end
	end
end});
local minifactorysizemultiplierSlider = TycoonSection:AddSlider({Name = "Set mini factory multiplier size",Min = 1,Max = 100,Default = settings["minifactorysizemultiplier"],Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "size",Callback = function(Value)
	settings["minifactorysizemultiplier"] = Value
end});

local increaseallupgraderssizeToggle = TycoonSection:AddToggle({Name = "Increase ALL upgraders size",Default = settings["increaseallupgraderssize"],Callback = function(Value)
	settings["increaseallupgraderssize"] = Value
	if settings["increaseallupgraderssize"] == true then
		while task.wait(0.1) and settings["increaseallupgraderssize"] == true do
            updatePlotVariable()
			for i, v in pairs(plot:FindFirstChild("Items"):GetDescendants()) do
                if v.Name == "Washer" or v.Name == "Sander" or v.Name == "TouchPart" or v.Name == "Eletric" or v.Name == "SprayPart" or v.Name == "Touch" and v.Parent.Name ~= "Blender" or v.Parent.Name ~= "Soul Extractor" and v.ClassName == "Part" then
                    v.Size = Vector3.new(settings["upgradersize"], settings["upgradersize"], settings["upgradersize"])
                end
            end
		end
	end
end});
local upgradersizeSlider = TycoonSection:AddSlider({Name = "Set ALL upgraders size",Min = 1,Max = 200,Default = settings["upgradersize"],Color = Color3.fromRGB(255,255,255),Increment = 1,ValueName = "size",Callback = function(Value)
	settings["upgradersize"] = Value
end});

local autorebirthToggle = TycoonSection:AddToggle({Name = "Auto rebirth",Default = settings["autorebirth"],Callback = function(Value)
	settings["autorebirth"] = Value
    rebirthDebounce = false
	if settings["autorebirth"] == true then
		while task.wait(0.1) and settings["autorebirth"] == true and rebirthDebounce == false do
            updatePlotVariable()
            rebirthDebounce = true
			if localPlayer and localPlayer:FindFirstChild("PlayerGui"):FindFirstChild("ObeliskScreen"):FindFirstChild("Display"):FindFirstChild("NewRebirth") then
                if localPlayer:FindFirstChild("PlayerGui"):FindFirstChild("ObeliskScreen"):FindFirstChild("Display"):FindFirstChild("NewRebirth").Visible == true then
                    game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
                    wait(10)
                end
            end
            rebirthDebounce = false
		end
	end
end});
