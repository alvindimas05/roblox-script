local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Blackout = workspace.Events.Blackout
local Found = false

function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Kaiju Paradise GUI";
		Text = msg;
		Duration = 5;
	})
end

if not Blackout.Value then
	notify("No Blackout!")
else
	notify("Checking if someone found it...")
	for _, v in pairs(Players:GetChildren()) do
		if v.Character:FindFirstChild("Nightcrawler_Goggle") then
			notify(v.Name.." found the goggle!")
			Found = true
			break
		end
	end
	if not Found then
		notify("Teleport Event Started!")
		notify("You're gonna get teleported if Goggle spawned")
		repeat wait() until workspace.Terrain:FindFirstChild("Nightvision") or not Blackout.Value
		if not Blackout.Value then
			notify("No Goggle...")
		else
			local Nightvision = workspace.Terrain.Nightvision
			local cur = Player.Character.HumanoidRootPart.CFrame

			task.wait(.1)
			Player.Character.HumanoidRootPart.CFrame = Nightvision.Hitbox.CFrame
			task.wait(.5)
			fireproximityprompt(Nightvision.Hitbox.Attachment.GiveItem)
			task.wait(.1)
			Player.Character.HumanoidRootPart.CFrame = cur
		end
	end
end