local Players = game:GetService("Players")
local name = Players.LocalPlayer.Name

while wait() do
	for _, v in pairs(Players:GetChildren()) do
        target = v.Character
		pcall(function()
			if v ~= Players:FindFirstChild(name) and target:FindFirstChild("ForceField") == nil then
				repeat
					Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").DamageRemote:FireServer(v.Character.Humanoid)
					wait()
				until target.Humanoid.Health == 0
			end
		end)
	end
end