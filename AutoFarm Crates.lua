if not game:IsLoaded() then
	game.Loaded:Wait();
end

repeat
	task.wait();
until game:GetService("Players") 
repeat
	task.wait();
until game.Players.LocalPlayer 
repeat
	task.wait();
until game.Players.LocalPlayer.Character ~= nil 
repeat
	task.wait();
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

local dropfolder = game.Workspace.RandomCrateDropsFolder
for i, v in pairs(dropfolder:GetDescendants()) do
    if v.ClassName == "TouchTransmitter" then 
		local characterpart = game.Players.LocalPlayer.Character.HumanoidRootPart
		firetouchinterest(v.Parent, characterpart, 0)
		firetouchinterest(v.Parent, characterpart, 1)
    end
end

local serverList = {};
for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if (v.playing and (type(v) == "table") and (v.maxPlayers > v.playing) and (v.id ~= game.JobId)) then
		serverList[#serverList + 1] = v.id;
	end
end
if (#serverList > 0) then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)]);
else
	error("No servers found");
end
