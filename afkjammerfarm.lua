local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Backpack

local Blackout = game.Workspace.Events:FindFirstChild("Blackout")
local Power = game.Workspace.Events:FindFirstChild("PowerOutage")
local Player = Players.LocalPlayer
local Touch
while true do
	if Blackout.Value == false or Power.Value == true then
        game.StarterGui:SetCore("SendNotification", {
        Title = "Kaiju Paradise GUI";
        Text = "Blackout is OFF! or Power Outage is ON!";
        Duration = 5;
        })
        break
    end
    Touch = Workspace.Fed:FindFirstChild("TouchInterest", true).Parent or Workspace.Scripted.TransformBrick.Fed:FindFirstChild("TouchInterest", true).Parent
    Player.Character.HumanoidRootPart.CFrame = CFrame.new(37, 1, -310)
    if Touch then
        firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
        firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
    else
        game.StarterGui:SetCore("SendNotification", {
        Title = "Kaiju Paradise GUI";
        Text = "No Jammer LOL";
        Duration = 5;
        })
		break
    end
    repeat
		wait(1)
	until Player.Character:FindFirstChild("Transformed")
	wait(9)
    Backpack = Player.Backpack.Diversion:FindFirstChild("Mic")
    if Backpack then
        game.StarterGui:SetCore("SendNotification", {
        Title = "Kaiju Paradise GUI";
        Text = "Congratulations!";
        Duration = 5;
        })
        break
    else
        Player.Character.Humanoid.Health = 0
        wait(7)
    end
end
