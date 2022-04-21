local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Leg

local Blackout = game.Workspace.Events:FindFirstChild("Blackout")
local Power = game.Workspace.Events:FindFirstChild("PowerOutage")
local Player = Players.LocalPlayer
local Touch = Workspace.Scripted.TransformBrick.SlimePup:FindFirstChild("TouchInterest", true).Parent
while true do
    if Blackout.Value == true or Power.Value == true then
        print("Blackout or Power Outage is ON!")
        break
    Player.Character.HumanoidRootPart.CFrame = CFrame.new(37, 1, -310)
    wait(1)
    for i = 1, 6 do
        firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
        firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
        wait(1.1)
    end
    wait(8)
    local Leg = Player.Character:FindFirstChild("Left Leg")
    if Leg.BrickColor == BrickColor.new("Bright yellow") or Leg:FindFirstChild("ShinyParticle") then
        print("Congrats!")
        break
    else
        Player.Character.Humanoid.Health = 0
        wait(17)
    end
end
