local KaijuParadiseGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Credit = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local ButtonFrame = Instance.new("Frame")
local TPToGoggles = Instance.new("TextButton")
local StandingPup = Instance.new("TextButton")
local HoundFarm = Instance.new("TextButton")
local PupFarm = Instance.new("TextButton")
local DragonFarm = Instance.new("TextButton")
local VIPJammerFarm = Instance.new("TextButton")
local VIPShadeFarm = Instance.new("TextButton")
local VIPNShadeFarm = Instance.new("TextButton")
local BarrierDelete = Instance.new("TextButton")

KaijuParadiseGUI.Name = "KaijuParadiseGUI"
KaijuParadiseGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KaijuParadiseGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KaijuParadiseGUI.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = KaijuParadiseGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.Position = UDim2.new(0.257037878, 0, 0.290382713, 0)
MainFrame.Size = UDim2.new(0, 365, 0, 34)
MainFrame.Draggable = true

Credit.Name = "Credit"
Credit.Parent = MainFrame
Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credit.BackgroundTransparency = 100.000
Credit.Position = UDim2.new(0.0329754725, 0, -0.000266102143, 0)
Credit.Size = UDim2.new(0, 339, 0, 35)
Credit.Font = Enum.Font.PatrickHand
Credit.Text = "Kaiju Paradise GUI by alvindimas05"
Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
Credit.TextSize = 24.000

Exit.Name = "Exit"
Exit.Parent = MainFrame
Exit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.915068448, 0, -0.0328719728, 0)
Exit.Size = UDim2.new(0, 31, 0, 35)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "x"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextSize = 35.000

Minimize.Name = "Minimize"
Minimize.Parent = MainFrame
Minimize.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BackgroundTransparency = 1.000
Minimize.Position = UDim2.new(0.830136955, 0, -0.0328719728, 0)
Minimize.Size = UDim2.new(0, 31, 0, 35)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextSize = 40.000

ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = MainFrame
ButtonFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ButtonFrame.Position = UDim2.new(-0.000496359076, 0, 1.00700605, 0)
ButtonFrame.Size = UDim2.new(0, 365, 0, 255)

TPToGoggles.Name = "TPToGoggles"
TPToGoggles.Parent = ButtonFrame
TPToGoggles.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.BackgroundTransparency = 0.900
TPToGoggles.BorderSizePixel = 6
TPToGoggles.Position = UDim2.new(0.356532365, 0, 0.380268395, 0)
TPToGoggles.Size = UDim2.new(0, 103, 0, 25)
TPToGoggles.Font = Enum.Font.PatrickHand
TPToGoggles.Text = "TP To Goggle"
TPToGoggles.TextColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.TextSize = 20.000

StandingPup.Name = "StandingPup"
StandingPup.Parent = ButtonFrame
StandingPup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.BackgroundTransparency = 0.900
StandingPup.BorderSizePixel = 6
StandingPup.Position = UDim2.new(0.030040266, 0, 0.380268395, 0)
StandingPup.Size = UDim2.new(0, 103, 0, 25)
StandingPup.Font = Enum.Font.PatrickHand
StandingPup.Text = "Standing Pup"
StandingPup.TextColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.TextSize = 20.000

HoundFarm.Name = "HoundFarm"
HoundFarm.Parent = ButtonFrame
HoundFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HoundFarm.BackgroundTransparency = 0.900
HoundFarm.BorderSizePixel = 6
HoundFarm.Position = UDim2.new(0.356349707, 0, 0.053414166, 0)
HoundFarm.Size = UDim2.new(0, 103, 0, 25)
HoundFarm.Font = Enum.Font.PatrickHand
HoundFarm.Text = "SlimeHound Farm"
HoundFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
HoundFarm.TextSize = 20.000

PupFarm.Name = "PupFarm"
PupFarm.Parent = ButtonFrame
PupFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.BackgroundTransparency = 0.900
PupFarm.BorderSizePixel = 6
PupFarm.Position = UDim2.new(0.0303222984, 0, 0.0494615883, 0)
PupFarm.Size = UDim2.new(0, 103, 0, 25)
PupFarm.Font = Enum.Font.PatrickHand
PupFarm.Text = "SlimePup Farm"
PupFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.TextSize = 20.000

DragonFarm.Name = "DragonFarm"
DragonFarm.Parent = ButtonFrame
DragonFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragonFarm.BackgroundTransparency = 0.900
DragonFarm.BorderSizePixel = 6
DragonFarm.Position = UDim2.new(0.676897645, 0, 0.0494615883, 0)
DragonFarm.Size = UDim2.new(0, 103, 0, 25)
DragonFarm.Font = Enum.Font.PatrickHand
DragonFarm.Text = "SlimeDragon Farm"
DragonFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
DragonFarm.TextSize = 20.000

VIPJammerFarm.Name = "VIPJammerFarm"
VIPJammerFarm.Parent = ButtonFrame
VIPJammerFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VIPJammerFarm.BackgroundTransparency = 0.900
VIPJammerFarm.BorderSizePixel = 6
VIPJammerFarm.Position = UDim2.new(0.359089434, 0, 0.22596319, 0)
VIPJammerFarm.Size = UDim2.new(0, 103, 0, 25)
VIPJammerFarm.Font = Enum.Font.PatrickHand
VIPJammerFarm.Text = "VIP Jammer Farm"
VIPJammerFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
VIPJammerFarm.TextSize = 20.000

VIPShadeFarm.Name = "VIPShadeFarm"
VIPShadeFarm.Parent = ButtonFrame
VIPShadeFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VIPShadeFarm.BackgroundTransparency = 0.900
VIPShadeFarm.BorderSizePixel = 6
VIPShadeFarm.Position = UDim2.new(0.0330620259, 0, 0.222010598, 0)
VIPShadeFarm.Size = UDim2.new(0, 103, 0, 25)
VIPShadeFarm.Font = Enum.Font.PatrickHand
VIPShadeFarm.Text = "VIP Shade Farm"
VIPShadeFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
VIPShadeFarm.TextSize = 20.000

VIPNShadeFarm.Name = "VIPNShadeFarm"
VIPNShadeFarm.Parent = ButtonFrame
VIPNShadeFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VIPNShadeFarm.BackgroundTransparency = 0.900
VIPNShadeFarm.BorderSizePixel = 6
VIPNShadeFarm.Position = UDim2.new(0.679637372, 0, 0.222010598, 0)
VIPNShadeFarm.Size = UDim2.new(0, 103, 0, 25)
VIPNShadeFarm.Font = Enum.Font.PatrickHand
VIPNShadeFarm.Text = "VIP NShade Farm"
VIPNShadeFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
VIPNShadeFarm.TextSize = 20.000

BarrierDelete.Name = "BarrierDelete"
BarrierDelete.Parent = ButtonFrame
BarrierDelete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BarrierDelete.BackgroundTransparency = 0.900
BarrierDelete.BorderSizePixel = 6
BarrierDelete.Position = UDim2.new(0.674340606, 0, 0.380268395, 0)
BarrierDelete.Size = UDim2.new(0, 103, 0, 25)
BarrierDelete.Font = Enum.Font.PatrickHand
BarrierDelete.Text = "Delete Barrier"
BarrierDelete.TextColor3 = Color3.fromRGB(255, 255, 255)
BarrierDelete.TextSize = 20.000

local Players = game:GetService("Players")
local Player = game:GetService("Players").LocalPlayer

local FCrame = CFrame.new(37, 1, -310)

function notify(text)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Kaiju Paradise GUI";
		Text = text;
    })
end

local minim = false
Minimize.MouseButton1Click:Connect(function()
	minim = not minim
	if minim == true then
		ButtonFrame.Visible = false
	else
		ButtonFrame.Visible = true
	end
end)

Exit.MouseButton1Click:Connect(function()
	KaijuParadiseGUI:Destroy()
end)

TPToGoggles.MouseButton1Click:Connect(function()
	local Blackout = workspace.Events.Blackout
	local Found = false

	if false then
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
		if Found == false then
			notify("Teleport Event Started!")
			notify("You're gonna get teleported if Goggle spawned")
			repeat wait() until workspace.Terrain:FindFirstChild("Nightvision") or Blackout.Value == false
			if false then
				notify("No Goggle...")
			else
				local Nightvision = workspace.Terrain:WaitForChild("Nightvision")
				local cur = Player.Character.HumanoidRootPart.CFrame

				task.wait(.1)
				Player.Character.HumanoidRootPart.CFrame = Nightvision.Hitbox.CFrame
				task.wait(.1)
				fireproximityprompt(Nightvision.Hitbox.Attachment.GiveItem)
				task.wait(.1)
				Player.Character.HumanoidRootPart.CFrame = cur
			end
		end
	end
end)

StandingPup.MouseButton1Click:Connect(function()
	local anim = game:GetService("Players").LocalPlayer.Character.Animate

	anim:FindFirstChild("idle").Value = "http://www.roblox.com/asset/?id=8955234815"
	anim:FindFirstChild("walk").Value = "http://www.roblox.com/asset/?id=7088128832"
	anim:FindFirstChild("fall"):Destroy()
	anim:FindFirstChild("jump"):Destroy()
end)

local Blackout = game.workspace.Events:FindFirstChild("Blackout")
local Power = game.workspace.Events:FindFirstChild("PowerOutage")
HoundFarm.MouseButton1Click:Connect(function()
	local Leg
	local Touch = workspace.Scripted.TransformBrick.SlimeHound:FindFirstChild("TouchInterest", true).Parent
	while true do
		if Blackout.Value == true or Power.Value == true then
			notify("Blackout or Power Outage is ON!")
			break
		end
		Player.Character.HumanoidRootPart.CFrame = FCrame
		wait(1)
		for i = 1, 6 do
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
			wait(1.1)
		end
		wait(8)
		local Leg = Player.Character:FindFirstChild("Left Leg")
		if Leg.BrickColor == BrickColor.new("Bright yellow") or Leg:FindFirstChild("ShinyParticle") then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(17)
		end
	end
end)

PupFarm.MouseButton1Click:Connect(function()
	local Leg
	local Touch = workspace.Scripted.TransformBrick.SlimePup:FindFirstChild("TouchInterest", true).Parent
	while true do
		if Blackout.Value == true or Power.Value == true then
			notify("Blackout or Power Outage is ON!")
			break
		end
		Player.Character.HumanoidRootPart.CFrame = FCrame
		wait(1)
		for i = 1, 6 do
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
			wait(1.1)
		end
		wait(8)
		local Leg = Player.Character:FindFirstChild("Left Leg")
		if Leg.BrickColor == BrickColor.new("Bright yellow") or Leg:FindFirstChild("ShinyParticle") then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(17)
		end
	end
end)

DragonFarm.MouseButton1Click:Connect(function()
	local Leg
	local Touch = workspace.Scripted.TransformBrick.Spike:FindFirstChild("TouchInterest", true).Parent
	while true do
		if Blackout.Value == true or Power.Value == true then
			notify("Blackout or Power Outage is ON!")
			break
		end
		Player.Character.HumanoidRootPart.CFrame = FCrame
		firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
		firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
		wait(8)
		local Leg = Player.Character:FindFirstChild("Left Leg")
		if Leg.BrickColor == BrickColor.new("Bright yellow") or Leg:FindFirstChild("ShinyParticle") then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(7)
		end
	end
end)

VIPJammerFarm.MouseButton1Click:Connect(function()
	local Touch
	local Backpack
	local Jammer
	while true do
		if Blackout.Value == false or Power.Value == true then
			notify("Blackout is OFF! or Power Outage is ON!")
			break
		end
		Shade = workspace:FindFirstChild("Fed") or workspace.Scripted.TransformBrick:FindFirstChild("Fed")
		Player.Character.HumanoidRootPart.CFrame = FCrame
		if Shade then
			Touch = Shade:FindFirstChild("TouchInterest", true).Parent
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
		else
			notify("No Jammer LOL")
			break
		end
		repeat
			wait(1)
		until Player.Character:FindFirstChild("Transformed")
		wait(9)
		Backpack = Player.Backpack.Diversion:FindFirstChild("Mic")
		if Backpack then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(7)
		end
	end
end)

VIPShadeFarm.MouseButton1Click:Connect(function()
	local Touch
	local Backpack
	local Shade
	while true do
		if Blackout.Value == true or Power.Value == true then
			notify("Blackout is OFF! or Power Outage is ON!")
			break
		end
		Shade = workspace:FindFirstChild("Shade") or workspace.Scripted.TransformBrick:FindFirstChild("Shade")
		Player.Character.HumanoidRootPart.CFrame = FCrame
		if Shade then
			Touch = Shade:FindFirstChild("TouchInterest", true).Parent
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
		else
			notify("No Nightshade LOL")
			break
		end
		repeat
			wait(1)
		until Player.Character:FindFirstChild("Transformed")
		wait(9)
		Backpack = Player.Backpack:FindFirstChild("Video Camera")
		if Backpack then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(7)
		end
	end
end)

VIPNShadeFarm.MouseButton1Click:Connect(function()
	local Touch
	local Backpack
	local Shade
	while true do
		if Blackout.Value == false or Power.Value == true then
			notify("Blackout is OFF! or Power Outage is ON!")
			break
		end
		Shade = workspace:FindFirstChild("Shade") or workspace.Scripted.TransformBrick:FindFirstChild("Shade")
		Player.Character.HumanoidRootPart.CFrame = FCrame
		if Shade then
			Touch = Shade:FindFirstChild("TouchInterest", true).Parent
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 0)
			firetouchinterest(Player.Character.HumanoidRootPart, Touch, 1)
		else
			notify("No Nightshade LOL")
			break
		end
		repeat
			wait(1)
		until Player.Character:FindFirstChild("Transformed")
		wait(9)
		Backpack = Player.Backpack:FindFirstChild("Boombox")
		if Backpack then
			notify("Congrats!")
			break
		else
			Player.Character.Humanoid.Health = 0
			wait(7)
		end
	end
end)

BarrierDelete.MouseButton1Click:Connect(function()
	workspace.Events.BarrierEnabled.Value = false
	notify("WARNING! You May Get Banned Because Of This!")
end)

notify("If you are using AFK Farm, Type :rejoin to stop")