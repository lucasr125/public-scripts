local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/lucasr125/Bracket_Orion/main/orionlib.lua')))();
local localplr = game.Players.LocalPlayer
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local plot

repeat task.wait() until localplr.Values.Plot.Value ~= nil
plot = localplr.Values.Plot.Value

OrionLib:MakeNotification({Name = "Hello!",Content = "Script Version: 2.c",Image = "rbxassetid://4483345998",Time = 5})

local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionLib"})
local Tab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false})

local settings = {
    ["autoobby"] = false,
    ["obbycooldown"] = 0.1,
    ["autojar"] = false,
    ["autoblender"] = false,
    ["autosendcrate"] = false,
    ["autobuy"] = false,
    ["includeupgraders"] = true,
    ["buycooldown"] = 1,
    ["autogetdrops"] = false,
    ["autorebirth"] = false,
    ["fastarm"] = false,
}

OrionLib:MakeNotification({Name = "Successfully initialized plot!",Content = "All farming features are now available",Image = "rbxassetid://4483345998",Time = 5})

local autoobbyToggle = Tab:AddToggle({Name = "Auto obby",Default = settings["autoobby"],Callback = function(Value)
	settings["autoobby"] = Value
    if settings["autoobby"] == true then
        while settings["autoobby"] == true and localplr.Character and localplr.Character.Head and localplr.Character.Humanoid.Health == 100 do
            firetouchinterest(localplr.Character.Head, game.Workspace.Obbies.HardObby.Finish.Button, 0)
            firetouchinterest(localplr.Character.Head, game.Workspace.Obbies.HardObby.Finish.Button, 1)
            firetouchinterest(localplr.Character.Head, game.Workspace.Obbies.EasyObby.Finish.Button, 0)
            firetouchinterest(localplr.Character.Head, game.Workspace.Obbies.EasyObby.Finish.Button, 1)
            task.wait(settings["obbycooldown"])
        end
    end
end})
local obbycooldownSlider = Tab:AddSlider({Name = "Set obby cooldown",Min = 0,Max = 10,Default = settings["obbycooldown"],Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "cooldown",Callback = function(Value)
	settings["obbycooldown"] = Value
end});

local autobuyToggle = Tab:AddToggle({
    Name = "Auto buy",
    Default = settings["autobuy"],
    Callback = function(Value)
        settings["autobuy"] = Value
        if settings["autobuy"] == true then
            while settings["autobuy"] and localplr.Character and localplr.Character.Humanoid.Health == 100 do
                task.wait(settings["buycooldown"])
                    if settings["includeupgraders"] == false then
                        for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
                            if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.PurchaseBillboard.Price.TextColor3 == Color3.fromRGB(114, 255, 112) --[[and v.PurchaseBillboard.Price.Text ~= "Gamepass" and v.Parent.Name ~= "Rainbow Upgrader" and v.Parent.Name ~= "Rainbow Gem Upgrader" and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Toggle Door Gamepass 2" and v.Parent.Name ~= "Toggle Door Gamepass Event" and v.Parent.Name ~= "Gold Blender" and v.Parent.Name ~= "Gold Dropper 1" and v.Parent.Name ~= "Gold Dropper 2" and v.Parent.Name ~= "Gold Dropper 3"]] then
                                local button1 = v
                                local bCFrame1 = v.CFrame
                                coroutine.resume(coroutine.create(function()
                                    button1.CanCollide = false
                                    button1.Transparency = 1
                                    button1.CFrame = localplr.Character.HumanoidRootPart.CFrame
                                    task.wait(settings["buycooldown"]/2)
                                    button1.CFrame = bCFrame1
                                    button1.Transparency = 0
                                    button1.CanCollide = true 
                                end))
                            end                
                        end
                    elseif settings["includeupgraders"] == true then
                        for i, v in pairs(plot.PurchaseButtons:GetDescendants()) do
                            if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.PurchaseBillboard.Price.TextColor3 == Color3.fromRGB(114, 255, 112) --[[and v.PurchaseBillboard.Price.Text ~= "Gamepass" and v.Parent.Name ~= "Rainbow Upgrader" and v.Parent.Name ~= "Rainbow Gem Upgrader" and v.Parent.Name ~= "Toggle Door Gamepass" and v.Parent.Name ~= "Toggle Door Gamepass 2" and v.Parent.Name ~= "Toggle Door Gamepass Event" and v.Parent.Name ~= "Gold Blender" and v.Parent.Name ~= "Gold Dropper 1" and v.Parent.Name ~= "Gold Dropper 2" and v.Parent.Name ~= "Gold Dropper 3"]] then
                                local button1 = v
                                local bCFrame1 = v.CFrame
                                coroutine.resume(coroutine.create(function()
                                    button1.CanCollide = false
                                    button1.Transparency = 1
                                    button1.CFrame = localplr.Character.HumanoidRootPart.CFrame
                                    task.wait(settings["buycooldown"]/2)
                                    button1.CFrame = bCFrame1
                                    button1.Transparency = 0
                                    button1.CanCollide = true 
                                end))
                            end                
                        end
                        for i, v in pairs(plot.UpgradeButtons:GetDescendants()) do
                            if v.Name == "Button" and v:FindFirstChild("TouchInterest") and v.PurchaseBillboard.Price.TextColor3 == Color3.fromRGB(114, 255, 112) then
                                local button2 = v
                                local bCFrame2 = v.CFrame
                                coroutine.resume(coroutine.create(function()
                                    button2.CanCollide = false
                                    button2.Transparency = 1
                                    button2.CFrame = localplr.Character.HumanoidRootPart.CFrame
                                    task.wait(settings["buycooldown"]/2)
                                    button2.CFrame = bCFrame2
                                    button2.Transparency = 0
                                    button2.CanCollide = true 
                                end))
                            end                
                        end
                    end
            end
        end
    end
})
local includeupgradersToggle = Tab:AddToggle({Name = "Include upgraders buttons",Default = settings["includeupgraders"],Callback = function(Value)
	settings["includeupgraders"] = Value
end})
local buycooldownSlider = Tab:AddSlider({Name = "Set buy cooldown",Min = 1,Max = 10,Default = settings["buycooldown"],Color = Color3.fromRGB(255,255,255),Increment = 0.1,ValueName = "cooldown",Callback = function(Value)
	settings["buycooldown"] = Value
end});


local autojarToggle = Tab:AddToggle({Name = "Auto jar ( wip )",Default = settings["autojar"],Callback = function(Value)
    settings["autojar"] = Value
    if settings["autojar"] == true then
        while settings["autojar"] == true do
            task.wait()
            for i, v in pairs(plot.ProcessingMachines:GetChildren()) do
                if v.Name == "Main_JarFactory" then
                    if v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("OpenDoorPrompt") and v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Cooldown") then
                        local doorPrompt = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("OpenDoorPrompt")
                        local cooldownGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Cooldown")
                        local arrowGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Arrow")

                        if cooldownGui.TextLabel.Text == "0" or cooldownGui.TextLabel.Text == "?" or arrowGui then
                            if localplr.Character and localplr.Character.HumanoidRootPart then
                                local oldPosition = localplr.Character.HumanoidRootPart.CFrame

                                repeat
                                    task.wait()
                                    localplr.Character.HumanoidRootPart.CFrame = doorPrompt.Parent.Parent.CFrame
                                    keypress(0x45)
                                    keyrelease(0x45)
                                until cooldownGui.TextLabel.Text ~= "0" or cooldownGui.TextLabel.Text ~= "?"

                                localplr.Character.HumanoidRootPart.CFrame = oldPosition
                            end
                        end
                    end
                end
                if v.Name == "Basement_JarFactory" and localplr.leaderstats.Rebirths.Value >= 6 then
                    if v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("OpenDoorPrompt") and v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Cooldown") then
                        local doorPrompt = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("OpenDoorPrompt")
                        local cooldownGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Cooldown")
                        local arrowGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("Arrow")

                        if cooldownGui.TextLabel.Text == "0" or cooldownGui.TextLabel.Text == "?" or arrowGui then
                            if localplr.Character and localplr.Character.HumanoidRootPart then
                                local oldPosition = localplr.Character.HumanoidRootPart.CFrame

                                repeat
                                    task.wait()
                                    localplr.Character.HumanoidRootPart.CFrame = doorPrompt.Parent.Parent.CFrame
                                    keypress(0x45)
                                    keyrelease(0x45)
                                until cooldownGui.TextLabel.Text ~= "0" or cooldownGui.TextLabel.Text ~= "?"

                                localplr.Character.HumanoidRootPart.CFrame = oldPosition
                            end
                        end
                    end
                end
            end
        end
    end
end})

Tab:AddToggle({Name = "Auto send crate ( wip )",Default = settings["autosendcrate"],Callback = function(Value)
    settings["autosendcrate"] = Value
    if settings["autosendcrate"] == true then
        while settings["autosendcrate"] == true do
            task.wait()
            for i, v in pairs(plot.ProcessingMachines:GetChildren()) do
                if v.Name == "Main_JarPackager" then
                    if v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("ArrowAttachment"):FindFirstChild("Arrow") then
                        local arrowGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("ArrowAttachment"):FindFirstChild("Arrow")

                        if localplr.Character and localplr.Character.Humanoid.Health == 100 and localplr.Character.HumanoidRootPart then
                            local oldPosition = localplr.Character.HumanoidRootPart.CFrame

                            repeat
                                task.wait()
                                localplr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Button"):FindFirstChild("Button").CFrame
                                keypress(0x45)
                                keyrelease(0x45)
                            until v:FindFirstChild("Crates"):FindFirstChild("Main_JarPackager_Crate") == nil

                            localplr.Character.HumanoidRootPart.CFrame = oldPosition
                        end
                    end
                end
                if v.Name == "Basement_JarPackager" and localplr.leaderstats.Rebirths.Value >= 6 then
                    if v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("ArrowAttachment"):FindFirstChild("Arrow") then
                        local arrowGui = v:FindFirstChild("Button"):FindFirstChild("Button"):FindFirstChild("ArrowAttachment"):FindFirstChild("Arrow")

                        if localplr.Character and localplr.Character.Humanoid.Health == 100 and localplr.Character.HumanoidRootPart then
                            local oldPosition = localplr.Character.HumanoidRootPart.CFrame

                            repeat
                                task.wait()
                                localplr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Button"):FindFirstChild("Button").CFrame
                                keypress(0x45)
                                keyrelease(0x45)
                            until v:FindFirstChild("Crates"):FindFirstChild("Main_JarPackager_Crate") == nil

                            localplr.Character.HumanoidRootPart.CFrame = oldPosition
                        end
                    end
                end
            end
        end
    end
end})

Tab:AddToggle({Name = "Auto blend",Default = settings["autoblender"],Callback = function(Value)

    settings["autoblender"] = Value
    if settings["autoblender"] == true then
        while settings["autoblender"] == true do
            task.wait()
            for i, v in pairs(plot.Purchases:GetChildren()) do
                if string.find(v.Name, "Blender") then
                    if v:FindFirstChild("Button"):FindFirstChild("Attachment"):FindFirstChild("ActivateBlender") and v:FindFirstChild("ActivationLight").BrickColor == BrickColor.new("Lime green") then
                        if localplr.Character and localplr.Character.HumanoidRootPart and localplr.Character.Humanoid.Health == 100 then
                            local oldPosition = localplr.Character.HumanoidRootPart.CFrame

                            repeat
                                task.wait()
                                localplr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Button").CFrame
                                keypress(0x45)
                                keyrelease(0x45)
                            until v:FindFirstChild("ActivationLight").BrickColor ~= BrickColor.new("Lime green")

                            localplr.Character.HumanoidRootPart.CFrame = oldPosition
                        end
                    end
                end
            end
        end
    end
end})

Tab:AddToggle({Name = "Auto drops",Default = settings["autogetdrops"],Callback = function(Value)
    settings["autogetdrops"] = Value
    if settings["autogetdrops"] == true then
        while settings["autogetdrops"] == true do
            task.wait()
            for i, v in pairs(game.Workspace.RandomCrateDropsFolder:GetChildren()) do
                if v:FindFirstChild("Box") and v:FindFirstChild("Box"):FindFirstChild("TouchInterest") then
                    firetouchinterest(v:FindFirstChild("Box"), localplr.Character.HumanoidRootPart, 0)
                    firetouchinterest(v:FindFirstChild("Box"), localplr.Character.HumanoidRootPart, 1)
                end
            end
        end
    end
end})

Tab:AddToggle({Name = "Auto Rebirth",Default = settings["autorebirth"],Callback = function(Value)
    settings["autorebirth"] = Value
    if settings["autorebirth"] == true then
        while settings["autorebirth"] == true do
            task.wait()
            coroutine.resume(coroutine.create(function()
                firetouchinterest(plot.RebirthButtons:WaitForChild("RebirthButton").Button, localplr.Character.HumanoidRootPart, 0)
                firetouchinterest(plot.RebirthButtons:WaitForChild("RebirthButton").Button, localplr.Character.HumanoidRootPart, 1)
                --game.ReplicatedStorage.Remotes.Event.Rebirth:FireServer(true)
            end))
        end
    end
end})

Tab:AddToggle({Name = "Fast Arm ( maybe not working )",Default = settings["fastarm"],Callback = function(Value)
    settings["fastarm"] = Value
    if settings["fastarm"] == true then
        while settings["fastarm"] == true do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Event.Animations.moveArm:FireServer()
        end
    end
end})

Tab:AddButton({Name = "Redeem All Code ( +3 Codes )",Callback = function()
    localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("PartyTime!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("1yearfactory!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DaveThePodiumMan!")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ABX")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("SpringLoaded")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("IceRockSkip")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("ImAWall")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("NotThatHard")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("RedSoilEntry")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("DevPapers")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("johan")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("HauntedSmoothie")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("7Rose10KRebirths")
	localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("25MVisits")
    localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("SisterPlanet")
    localplr.PlayerGui.MainGui.Settings.Codes.RedeemCodeScript.Remote:FireServer("SlushSmoothie")
end})


local ws = Instance.new("ScreenGui")
ws.Parent = game:GetService("CoreGui")

local wsf = Instance.new("Frame")
wsf.Parent = ws
wsf.BackgroundColor3 = Color3.new(355,355,355)
wsf.Size = UDim2.new(1, 0, 1, 0)
ws.Enabled = false

Tab:AddToggle({Name = "White Screen / Anti Lag",Default = false,Callback = function(Value)
	ws.Enabled = Value
end})
