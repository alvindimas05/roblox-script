local KaijuParadiseGUI = Instance.new("CoreGui")
local Frame = Instance.new("Frame")
local Credit = Instance.new("TextLabel")
local PupFarm = Instance.new("TextButton")
local TPToGoggles = Instance.new("TextButton")
local StandingPup = Instance.new("TextButton")

KaijuParadiseGUI.Name = "KaijuParadiseGUI"
KaijuParadiseGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KaijuParadiseGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = KaijuParadiseGUI
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(0.242349997, 0, 0.258573562, 0)
Frame.Size = UDim2.new(0, 499, 0, 288)
Frame.Draggable = true

Credit.Name = "Credit"
Credit.Parent = Frame
Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credit.BackgroundTransparency = 100.000
Credit.Position = UDim2.new(0.157879442, 0, -0.00718651759, 0)
Credit.Size = UDim2.new(0, 339, 0, 35)
Credit.Font = Enum.Font.PatrickHand
Credit.Text = "Kaiju Paradise GUI by alvindimas05"
Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
Credit.TextSize = 24.000

PupFarm.Name = "Pup Farm"
PupFarm.Parent = Frame
PupFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.BackgroundTransparency = 0.900
PupFarm.BorderSizePixel = 6
PupFarm.Position = UDim2.new(0.0221031215, 0, 0.155791923, 0)
PupFarm.Size = UDim2.new(0, 103, 0, 25)
PupFarm.Font = Enum.Font.PatrickHand
PupFarm.Text = "AFK Pup Farm"
PupFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
PupFarm.TextSize = 20.000
PupFarm.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/afkpupfarm.lua", true))()
end)

TPToGoggles.Name = "TP To Goggles"
TPToGoggles.Parent = Frame
TPToGoggles.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.BackgroundTransparency = 0.900
TPToGoggles.BorderSizePixel = 6
TPToGoggles.Position = UDim2.new(0.274710238, 0, 0.155791923, 0)
TPToGoggles.Size = UDim2.new(0, 103, 0, 25)
TPToGoggles.Font = Enum.Font.PatrickHand
TPToGoggles.Text = "TP To Goggles"
TPToGoggles.TextColor3 = Color3.fromRGB(255, 255, 255)
TPToGoggles.TextSize = 20.000
TPToGoggles.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/nightcrawlgoggles.lua", true))()
end)

StandingPup.Name = "Standing Pup"
StandingPup.Parent = Frame
StandingPup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.BackgroundTransparency = 0.900
StandingPup.BorderSizePixel = 6
StandingPup.Position = UDim2.new(0.521002054, 0, 0.155791923, 0)
StandingPup.Size = UDim2.new(0, 103, 0, 25)
StandingPup.Font = Enum.Font.PatrickHand
StandingPup.Text = "Standing Pup"
StandingPup.TextColor3 = Color3.fromRGB(255, 255, 255)
StandingPup.TextSize = 20.000
StandingPup.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/alvindimas05/roblox/main/standingpup.lua", true))()
end)
