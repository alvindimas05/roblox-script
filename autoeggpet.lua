local Player = game:GetService("Players").LocalPlayer
local uis = game:GetService("UserInputService")
local btn = Player.PlayerGui.Message.Frame.Yes

local function keyPress(keyCode)
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, keyCode, false, game)
	vim:SendKeyEvent(false, keyCode, false, game)
end

function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Pet Simulator X Auto Egg";
		Text = msg;
		Duration = 5;
	})
end

local start = false
uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.KeypadPlus then
		notify("Farm started!")
		start = true
		while start do
			keyPress(Enum.KeyCode.E)
			wait(.5)
			for i, v in pairs(getconnections(btn.Activated)) do
				v:Fire()
			end
			repeat wait() until Player.PlayerGui:FindFirstChild("ScreenGui")
			repeat wait() until not Player.PlayerGui:FindFirstChild("ScreenGui")
			wait(.5)
		end
	elseif input.KeyCode == Enum.KeyCode.KeypadMinus then
		start = false
		notify("Farm stopped!")
	end
end)