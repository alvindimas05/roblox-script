local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Nightvision = Workspace.Terrain:FindFirstChild("Nightvision")

if Nightvision then
    Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Nightvision.Hitbox.CFrame
else 
    print("No Nightvision")
end