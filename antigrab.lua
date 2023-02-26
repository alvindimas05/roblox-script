local player = game.Players.LocalPlayer.PlayerGui
while task.wait() do
	local escape = player:FindFirstChild("Escaping")
	if escape then
		local remote = escape:FindFirstChild("RemoteEvent")
		repeat
			remote:FireServer()
			task.wait()
		until escape:FindFirstChild("RemoteEvent") == nil
	end
end