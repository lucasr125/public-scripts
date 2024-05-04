local plr = game.Players.LocalPlayer
local tycoonOwned = plr:FindFirstChild("TycoonOwned").Value


local enabledAutoCollect = false
local autoBuyItems = false

while wait(0.1) do
	if enabledAutoCollect == true then
		local collector = tycoonOwned.Build.Collect.Part
		firetouchinterest(plr.Character.HumanoidRootPart, collector, 1)
		firetouchinterest(plr.Character.HumanoidRootPart, collector, 0)
		wait()
	end
	if autoBuyItems == true then
		for i, v in pairs(tycoonOwned.Buttons:GetDescendants()) do
			if v.Name == "Part" and v.Parent.Name == "Button" and v:FindFirstChild("TouchInterest") and v.BrickColor == "Shamrock" then
				firetouchinterest(plr.Character.HumanoidRootPart, v, 1)
				firetouchinterest(plr.Character.HumanoidRootPart, v, 0)
				wait()
			end
		end
	end
end
