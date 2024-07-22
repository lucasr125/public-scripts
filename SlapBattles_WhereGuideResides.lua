local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local Window = OrionLib:MakeWindow({IntroText = (GameName), IntroIcon = "rbxassetid://15315284749",Name = (GameName.." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})


if game.Workspace:FindFirstChild("VoidPart") == nil then
    local VoidPart = Instance.new("Part", workspace)
    VoidPart.Position = Vector3.new(538, 55, -231)
    VoidPart.Name = "VoidPart"
    VoidPart.Size = Vector3.new(2048, 11, 2048)
    VoidPart.Anchored = true
    VoidPart.Transparency = 1
    VoidPart.CanCollide = false
end
    
    local Tab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4370318685",
        PremiumOnly = false
    })
    
    Tab:AddButton({
        Name = "Enter ( Cure + Extra heart )",
        Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -75, 823)
    wait(2.8)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["the cube of life"].Part.CFrame
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Big Heart"].CFrame
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.ShackLever.Base.CFrame
    wait(0.5)
    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
    fireclickdetector(v.ClickDetector, 0)
    fireclickdetector(v.ClickDetector, 1)
                        end
                    end
          end 
    })

    Tab:AddButton({
        Name = "Enter ( gives 'Nah, id win' badge )",
        Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -75, 823)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.ShackLever.Base.CFrame
    wait(0.5)
    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
    fireclickdetector(v.ClickDetector, 0)
    fireclickdetector(v.ClickDetector, 1)
                        end
                    end
          end 
    })
    
    Tab:AddToggle({
        Name = "Anti Void",
        Default = false,
        Callback = function(Value)
    game.Workspace.VoidPart.CanCollide = Value
    if Value == true then
    game.Workspace.VoidPart.Transparency = 0.5
    else
    game.Workspace.VoidPart.Transparency = 1
    end
        end    
    })
    
    Tab:AddToggle({
        Name = "Auto slap track missile",
        Default = false,
        Callback = function(Value)
    _G.BringTrask = Value
    while _G.BringTrask do
    if game.Workspace:FindFirstChild("TrackGloveMissile") then
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "TrackGloveMissile" then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-4)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
    if game.Workspace:FindFirstChild("TrackGloveMissile") then
    game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v)
    end
    end
    end
    end
    end
    task.wait()
    end
        end    
    })
    
    Tab:AddToggle({
        Name = "Auto slap guide boss",
        Default = false,
        Callback = function(Value)
    _G.FightBossFinal = Value
    while _G.FightBossFinal do
    if game.Workspace:FindFirstChild("GuideNPC") then
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "GuideNPC" then
    v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
    if game.Workspace:FindFirstChild("GuideNPC") then
    game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
    end
    end
    end
    end
    end
    task.wait()
    end
        end    
    })
    
    Tab:AddToggle({
        Name = "Auto slap golem",
        Default = false,
        Callback = function(Value)
    _G.FightGolem = Value
    while _G.FightGolem do
    if game.Workspace:FindFirstChild("golem") then
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "golem" and v:FindFirstChild("Hitbox") then
    v.Hitbox.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-4)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
    if game.Workspace:FindFirstChild("golem") then
    game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.Hitbox)
    end
    end
    end
    end
    end
    task.wait()
    end
        end    
    })

    Tab:AddToggle({
        Name = "Auto slap npc",
        Default = false,
        Callback = function(Value)
    _G.FightNPC = Value
    while _G.FightNPC do
    if game.Workspace:FindFirstChild("ReplicaNPC") then
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then
    v.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-4)
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
    game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
    if game.Workspace:FindFirstChild("ReplicaNPC") then
    game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v.HumanoidRootPart)
    end
    end
    end
    end
    end
    task.wait()
    end
        end    
    })
    
    Tab:AddButton({
        Name = "Press gate lever",
        Callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
                        if v.Name == "Gate1Lever" and v:FindFirstChild("ClickDetector") then
    fireclickdetector(v.ClickDetector, 0)
    fireclickdetector(v.ClickDetector, 1)
                        end
                    end
          end 
    })
    
    Tab:AddButton({
        Name = "[ Destroy GUI ] [ Toggle Gui ]",
        Callback = function()
    OrionLib:Destroy()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi") then
    game.Players.LocalPlayer.PlayerGui:FindFirstChild("ToggleUi"):Destroy()
    end
          end 
    })
