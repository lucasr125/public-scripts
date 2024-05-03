local plr = game.Players.LocalPlayer
local plrTycoon = plr.Character.Name.."1"

function updProx()
    for i, v in pairs(game.Workspace[plrTycoon]:GetChildren()) do
        if v:IsA("BasePart") and v:FindFirstChild("ProximityPrompt") then
            v.ProximityPrompt.HoldDuration = 0
        end
    end
end

while wait(0.1) do
    updProx()
end
