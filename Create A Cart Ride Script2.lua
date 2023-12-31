local ReplicatedStorage = game:GetService("ReplicatedStorage");

local CartData = require(ReplicatedStorage.Modules.IDs.CartInfos);

local function TableFind(Operation, Table1, SearchingFor)
	local Loop = nil;
	Loop = function(Table2)
		for Index, Value in pairs(Table2) do
			if Operation == "Value" then
				if typeof(Value) == "table" then
					return Loop(Value);
				elseif Value == SearchingFor then
					return true, Index;
				end;
			elseif Operation == "Index" then
				if Index == SearchingFor then
					return true, Value;
				end;
			end;
		end;
		return false, nil;
	end;
	return Loop(Table1);
end;

ReplicatedStorage.Events.ClaimCart:InvokeServer((function()
	for Index, Data in pairs(CartData) do
		if Data.Category == "LevelAchievements" then
			if TableFind("Index", game:GetService("HttpService"):JSONDecode(game.Players.LocalPlayer.PDF.CartInventory.Value), Index) == false then
				queue_on_teleport([[
				local function Animate(Parent, Time, Style, Direction, Animation)
					game:GetService("TweenService"):Create(Parent, TweenInfo.new(Time, Style, Direction, 0, false, 0), Animation):Play();
				end;
				local Players = game:GetService("Players");
				repeat task.wait() until Players.LocalPlayer ~= nil;
				local Player = Players.LocalPlayer;
				repeat task.wait() until Player.Character ~= nil;
				repeat task.wait() until Player.Character:FindFirstChild("HumanoidRootPart") ~= nil;
				repeat task.wait() until workspace:FindFirstChild("CartRideWorkspace") ~= nil;
				repeat task.wait() until workspace.CartRideWorkspace:FindFirstChild("Objects") ~= nil;
				repeat task.wait() until workspace.CartRideWorkspace.Objects:FindFirstChild("CartGiver") ~= nil;
				for Int, Part in pairs(workspace.CartRideWorkspace.Objects:GetChildren()) do
					if Part.Name == "DamagePart" then
						Part:Remove();
					end;
				end;
				workspace.CartRideWorkspace.Objects.ChildAdded:Connect(function(Part)
					if Part.Name == "DamagePart" then
						Part:Remove();
					end;
				end);
				local CartGiver = workspace.CartRideWorkspace.Objects.CartGiver;
				Animate(Player.Character.HumanoidRootPart, 1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, {CFrame = CFrame.new(CartGiver.WorldPivot.Position)});
				local RenderedPart = false;
				while task.wait() do
					for Int, Value in pairs(CartGiver:GetDescendants()) do
						if Value.ClassName ~= "Model" then
							RenderedPart = true;
							break;
						end;
					end;
					if RenderedPart == true then
						if Player.PlayerGui.ScreenGui.MenuButton.ShopButton.Notification.Visible == true then
							break;
						end;
						if CartGiver:FindFirstChild("Hitbox") ~= nil then
							firetouchinterest(CartGiver.Hitbox, Player.Character.HumanoidRootPart, 0);
							task.wait(0.1);
							firetouchinterest(CartGiver.Hitbox, Player.Character.HumanoidRootPart, 1);
						end;
					end;
				end;
				task.wait(1);
				loadstring(game:HttpGet("https://raw.githubusercontent.com/lucasr125/public-scripts/main/Create%20A%20Cart%20Ride%20Script2.lua"))();
				]]);
				return Index;
			end;
		end;
	end;
end)());
 
