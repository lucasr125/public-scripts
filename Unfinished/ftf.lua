__VERSION__ = '2.0'

-- Variables
local ESP = Instance.new(
	"Folder",
	workspace
) ESP.Name = "ESP"
local ESPPC = Instance.new(
	"Folder",
	workspace
) ESPPC.Name = "ESPComputer"
function GetSizeOfObject(Obj)
	if Obj:IsA("BasePart") then
		return Obj.Size
	elseif Obj:IsA("Model") then
		return Obj:GetExtentsSize()
	end
end
function CreateESPPart(BodyPart,r,g,b)
	local ESPPartparent = BodyPart
	local Box = Instance.new("BoxHandleAdornment")
	Box.Size = GetSizeOfObject(ESPPartparent) + Vector3.new(0.1, 0.1, 0.1)
	Box.Name = "ESPPart"
	Box.Adornee = ESPPartparent
	Box.Color3 = Color3.fromRGB(r,g,b)
	Box.AlwaysOnTop = true
	Box.ZIndex = 5
	Box.Transparency = 0.4
	Box.Parent = ESP
	if BodyPart.Parent.Name == game.Players.LocalPlayer.Name then
		Box:remove()
		spawn (function()
			while true do
				wait(0.1)
				if BodyPart ~= nil then
					Box:remove()
				end
			end
		end)
	end
end
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
	local Args = {...}
	local Self = Args[1]
	if getnamecallmethod() == "FireServer" and tostring(Self) == "RemoteEvent" and Args[1] == "ReportPhysicsFPS" then
		return wait(math.huge)
	end
	return OldNameCall(...)
end)
local function WalkSpeedBypass()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)
	local oldIndex = gmt.__Index
	gmt.__Index = newcclosure(function(self, b)
		if b == 'WalkSpeed' then
			return 16
		end
		return oldIndex(self, b)
	end)
end
local function JumpPowerBypass()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)
	local oldIndex = gmt.__Index
	gmt.__Index = newcclosure(function(self, b)
		if b == 'JumpPower' then
			return 50
		end
		return oldIndex(self, b)
	end)
end
local BeastColor = Color3.new(255, 0, 0)
local InoccentColor = Color3.new(255, 255, 255)
local CreateEsp = function()
	for _, v in pairs(game:GetService('Players'):GetChildren()) do
		if v.Name ~= game:GetService('Players').LocalPlayer.Name then
			local Esp = Instance.new('Highlight', v.Character)
			Esp.Name = 'EspPlayer'
			Esp.FillTransparency = 0.5
		end
	end
end
local UpdateEsp = function()
	for _, v in pairs(game:GetService('Players'):GetChildren()) do
		if v.Name ~= game:GetService('Players').LocalPlayer.Name then
			if v.Character:findFirstChild('BeastPowers') then
				v.Character.EspPlayer.FillColor = BeastColor
			else
				v.Character.EspPlayer.FillColor = InoccentColor
			end
		end
	end
end
local Map = workspace:FindFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart



-- Libray
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
	Title = 'Infinity Hub | '..__VERSION__..' | '..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
	SubTitle = "by InfinityMercury",
	TabWidth = 100,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = false,
	Theme = "Darker",
	MinimizeKey = Enum.KeyCode.J
})
local Tabs = {
	Farming = Window:AddTab({ Title = "Farming", Icon = "rbxassetid://7743866529" }),
	Esp = Window:AddTab({ Title = "Esp", Icon = "rbxassetid://7733774602" }),
	Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options



-- Code
local AutoHackToggle = Tabs.Farming:AddToggle("MyToggle", {Title = "Auto Hack", Default = false })
AutoHackToggle:OnChanged(function(bool)
	AutoHack = bool
	while AutoHack do task.wait()
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("SetPlayerMinigameResult",true)
	end
end)
local NoSlowToggle = Tabs.Farming:AddToggle("MyToggle", {Title = "No Slow", Default = false })
NoSlowToggle:OnChanged(function(bool)
	NoSlow = bool
	if NoSlow then
		WalkSpeedBypass()
		while NoSlow do task.wait(.4)
			if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed < 16 then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			end
		end
	end
end)
Tabs.Farming:AddButton({
	Title = "Check Beast",
	Description = "Click to check the beast",
	Callback = function()
		for _, v in pairs(game:GetService('Players'):GetChildren()) do
			if v.Name ~= game:GetService('Players').LocalPlayer.Name then
				if v.Character:findFirstChild('BeastPowers') then
					Fluent:Notify({
						Title = "Beast Check",
						Content = "Beast is: "..v.Name,
						Duration = 8
					})
				end
			end
		end
	end
})
local Slider = Tabs.Farming:AddSlider("Slider", {
	Title = "WalkSpeed",
	Description = "WalkSpeed slider",
	Default = 16,
	Min = 16,
	Max = 500,
	Rounding = 0,
	Callback = function(Value)
		WalkSpeedBypass()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
local Slider = Tabs.Farming:AddSlider("Slider", {
	Title = "JumpPower",
	Description = "JumpPower slider",
	Default = 50,
	Min = 50,
	Max = 500,
	Rounding = 0,
	Callback = function(Value)
		JumpPowerBypass()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})


local PlayerEspToggle = Tabs.Esp:AddToggle("MyToggle", {Title = "Players Esp", Default = false })
PlayerEspToggle:OnChanged(function(bool)
	PlayersEsp = bool
	if PlayersEsp then
		CreateEsp()
		while PlayersEsp do task.wait()
			UpdateEsp()
		end
	else
		for _, x in pairs(workspace:GetDescendants()) do
			if x:IsA('Highlight') and x.Name == 'EspPlayer' then
				x:Destroy()
			end
		end
	end
end)
local ComputersEspToggle = Tabs.Esp:AddToggle("MyToggle", {Title = "Computers Esp", Default = false })
ComputersEspToggle:OnChanged(function(bool)
	CumputersEsp = bool
	if CumputersEsp then
		local map = workspace:findFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
		local children = map:GetChildren()
		for i =1, #children do
			if children[i].Name == "ComputerTable" then
				local Box = Instance.new("BoxHandleAdornment")
				Box.Size = GetSizeOfObject(children[i].Screen) + Vector3.new(-0.5, -0.5, -0.5)
				Box.Name = "ESPPart"
				Box.Adornee = children[i].Screen
				spawn (function()
					while true do
						wait(0.1)
						Box.Color3 = children[i].Screen.Color
					end
				end)
				Box.AlwaysOnTop = true
				Box.ZIndex = 5
				Box.Transparency = 0.4
				Box.Parent = ESPPC
			end
		end
	else
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA('BoxHandleAdornment') then
				v:Destroy()
			end
		end
	end
end)


Tabs.Settings:AddParagraph({
	Title = "Hub Settings",
	Content = "Keybind: J\n\nhave fun"
})
v
