local Player = game:GetService("Players").LocalPlayer
local Head

local Blackout = workspace.Events.Blackout
local Power = workspace.Events.PowerOutage

local cfr = {}
cfr[0] = CFrame.new(549.998779,-12.700447,-72.160721)
cfr[1] = CFrame.new(650.407410,-12.400686,-64.015060)

local cf = 0

local dcolor = BrickColor.new("Medium stone grey")
local ccolor
-- Disable Zone Detection
Player.PlayerScripts.LocalScript.Zone.Disabled = true

-- Get Current Head Color
ccolor = Player.Character.Head.BrickColor

function notify(text)
	print("Message from Kaiju Paradise Slime Farm :\n"..text)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Kaiju Paradise Slime Farm";
		Text = text;
		Duration = 5;
    })
end

while true do
	-- Check Events
	if Blackout.Value == true or Power.Value == true then
		notify("Blackout or Power Outage is ON!")
		break
	end

	-- Wait until HumanoidRootPart
	repeat wait() until Player.Character:FindFirstChild("HumanoidRootPart")

	-- Teleport To Spike
	Player.Character.HumanoidRootPart.CFrame = cfr[cf]
	if cf == 0 then
		cf = 1
	else 
		cf = 0
	end

	Head = Player.Character.Head
	repeat
		print(Head.BrickColor)
		wait()
	until Head.BrickColor ~= ccolor and Head.BrickColor ~= dcolor

	if Head.BrickColor == BrickColor.new("Bright yellow") or Head.BrickColor == BrickColor.new("Pastel blue-green") then
		notify("Congrats!")
		break
	else
		Player.Character.Humanoid.Health = 0
		Player.CharacterAdded:Wait()
	end
end