for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        if v.BrickColor == BrickColor.new("Really red") and not v:FindFirstChildWhichIsA("SurfaceGui") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
end
--delete all trains

for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "GOALLine" and v:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
    end
end
-- get all badges

for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Part" and v:FindFirstChildWhichIsA("ClickDetector") then
        local surfaceGui = v:FindFirstChildWhichIsA("SurfaceGui")
        if surfaceGui and surfaceGui.TextLabel and surfaceGui.TextLabel.Text and string.find(surfaceGui.TextLabel.Text, "SPAWN") then
            fireclickdetector(v:FindFirstChildWhichIsA("ClickDetector"))
        end
    end
end
--spawn all free trains
