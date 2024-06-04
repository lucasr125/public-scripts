local Window = OrionLib:MakeWindow({IntroText=GameName,Name=(GameName .. " - " .. identifyexecutor()),HidePremium=false,SaveConfig=false,IntroEnabled=true,ConfigFolder="slap battles"});
	local Tab = Window:MakeTab({Name="Main",Icon="rbxassetid://4370345144",PremiumOnly=false});
	Tab:AddButton({Name="Testing Server Freecam",Callback=function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/SB%20Freecam"))();
	end});
	Tab:AddButton({Name="Testing Server Freecam [ Mobile ]",Callback=function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Freecam_mobile.lua"))();
	end});
	Tab:AddButton({Name="Infinite Yield",Callback=function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex"))();
	end});
	Tab:AddButton({Name="TP back to Slap Battles",Callback=function()
		game:GetService("TeleportService"):Teleport(6403373529);
	end});
	Tab:AddButton({Name="Rejoin Server",Callback=function()
		local teleportFunc = queueonteleport or queue_on_teleport or (syn and syn.queue_on_teleport);
		if teleportFunc then
			teleportFunc([[
				if not game:IsLoaded() then
					game.Loaded:Wait()
				end
				repeat wait() until game.Players.LocalPlayer
				game:GetService("RunService").RenderStepped:Connect(function()
					game:GetService("GuiService"):ClearError()
					game.CoreGui.RobloxLoadingGUI:Destroy()
				end)
			]]);
		end
		game:GetService("TeleportService"):Teleport(game.PlaceId);
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
