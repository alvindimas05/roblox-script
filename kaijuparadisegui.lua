local KaijuParadiseGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local PupFarm = Instance.new("TextButton")
local TPToGoggles = Instance.new("TextButton")
local StandingPup = Instance.new("TextButton")

KaijuParadiseGUI.Name = "KaijuParadiseGUI"
KaijuParadiseGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KaijuParadiseGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = KaijuParadiseGUI
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(0.61077106, 0, 0.630218685, 0)
Frame.Size = UDim2.new(0, 318, 0, 186)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 100.000
TextLabel.Position = UDim2.new(0.157232702, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 217, 0, 23)
TextLabel.Font = Enum.Font.PatrickHand
TextLabel.Text = "Kaiju Paradise GUI by alvindimas05"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

PupFarm.Name = "Pup Farm"
PupFarm.Parent = Frame
PupFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.BackgroundTransparency = 0.900
PupFarm.BorderSizePixel = 6
PupFarm.Position = UDim2.new(0.0220125802, 0, 0.161290318, 0)
PupFarm.Size = UDim2.new(0, 66, 0, 17)
PupFarm.Font = Enum.Font.PatrickHand
PupFarm.Text = "AFK Pup Farm"
PupFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.TextSize = 14.000
PupFarm.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/afkpupfarm.lua", true))()
end)

TPToGoggles.Name = "TP To Goggles"
TPToGoggles.Parent = Frame
TPToGoggles.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.BackgroundTransparency = 0.900
TPToGoggles.BorderSizePixel = 6
TPToGoggles.Position = UDim2.new(0.273584932, 0, 0.161290318, 0)
TPToGoggles.Size = UDim2.new(0, 66, 0, 17)
TPToGoggles.Font = Enum.Font.PatrickHand
TPToGoggles.Text = "TP To Goggles"
TPToGoggles.TextColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.TextSize = 14.000
TPToGoggles.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/nightcrawlgoggles.lua", true))()
end)

StandingPup.Name = "Standing Pup"
StandingPup.Parent = Frame
StandingPup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.BackgroundTransparency = 0.900
StandingPup.BorderSizePixel = 6
StandingPup.Position = UDim2.new(0.51886797, 0, 0.161290318, 0)
StandingPup.Size = UDim2.new(0, 66, 0, 17)
StandingPup.Font = Enum.Font.PatrickHand
StandingPup.Text = "Standing Pup"
StandingPup.TextColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.TextSize = 14.000
StandingPup.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/standingpup.lua", true))()
end)